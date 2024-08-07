#include "Shared.hpp"

#include <ghc/filesystem.hpp> // bruh

using namespace codegen;

std::map<void const*, size_t> codegen::idMap;

std::string generateMacHeader(std::string filebase, std::string file_ext) {
    auto header_guard = file_ext == "cpp" ? "" : "#pragma once";

    return fmt::format(R"GEN({2}
#include <Geode/platform/platform.hpp>

#ifdef GEODE_IS_ARM_MAC
#include "{0}Arm.{1}"
#else
#include "{0}Intel.{1}"
#endif
)GEN", filebase, file_ext, header_guard);
}

std::string generateMacFolderHeader(std::string folder, std::string filename) {
    return fmt::format(R"GEN(#pragma once
#include <Geode/platform/platform.hpp>

#ifdef GEODE_IS_ARM_MAC
#include <Geode/{0}_arm/{1}>
#else
#include <Geode/{0}_intel/{1}>
#endif
)GEN", folder, filename);
}

void generateFolderAlias(ghc::filesystem::path const& writeDir, std::string baseName, std::unordered_set<std::string> const& files) {
    auto outputDir = writeDir / baseName;

    for (const auto& filename : files) {
        writeFile(outputDir / filename, generateMacFolderHeader(baseName, filename));
    }
}

int main(int argc, char** argv) try {
    if (argc != 4) {
        throw codegen::error("Invalid number of parameters (expected 3, found {})", argc - 1);
    }

    std::string p = argv[1];

    // if (p == "--into-json") {
    //     auto rootDir = ghc::filesystem::path(argv[2]);
    //     ghc::filesystem::current_path(rootDir);

    //     Root root = broma::parse_file("Entry.bro");
    //     writeFile(ghc::filesystem::path(argv[3]), generateTextInterface(root));
    //     return 0;
    // }

    if (p == "Win32" || p == "Win64")  {
        codegen::platform = Platform::Windows;
        if (p == "Win32")
            codegen::platformArch = PlatformArch::x86;
    }
    else if (p == "MacOS") codegen::platform = Platform::Mac;
    else if (p == "iOS") codegen::platform = Platform::iOS;
    else if (p == "Android32") codegen::platform = Platform::Android32;
    else if (p == "Android64") codegen::platform = Platform::Android64;
    else throw codegen::error("Invalid platform {}\n", p);

    auto rootDir = ghc::filesystem::path(argv[2]);
    ghc::filesystem::current_path(rootDir);

    auto writeDir = ghc::filesystem::path(argv[3]) / "Geode";
    ghc::filesystem::create_directories(writeDir);

    if (codegen::platform == Platform::Mac) {
        ghc::filesystem::create_directories(writeDir / "modify_intel");
        ghc::filesystem::create_directories(writeDir / "binding_intel");
        ghc::filesystem::create_directories(writeDir / "modify_arm");
        ghc::filesystem::create_directories(writeDir / "binding_arm");
    }

    ghc::filesystem::create_directories(writeDir / "modify");
    ghc::filesystem::create_directories(writeDir / "binding");

    Root root = broma::parse_file("Entry.bro");

    for (auto cls : root.classes) {
        for (auto dep : cls.attributes.depends) {
            if (!is_cocos_class(dep) &&
                std::find(root.classes.begin(), root.classes.end(), dep) == root.classes.end()) {
                throw codegen::error("Class {} depends on unknown class {}", cls.name, dep);
            }
        }
    }

    codegen::populateIds(root);

    if (codegen::platform == Platform::Mac) {
        // on macos, build both platform headers together and then let the preprocessor handle the platform selection
        // this is easier. but not by a lot

        std::unordered_set<std::string> generatedModify{};
        std::unordered_set<std::string> generatedBindings{};

        bool generatedSourceChanged = false;

        codegen::platform = Platform::MacArm;

        writeFile(writeDir / "GeneratedModifyArm.hpp", generateModifyHeader(root, writeDir / "modify_arm", &generatedModify));
        writeFile(writeDir / "GeneratedBindingArm.hpp", generateBindingHeader(root, writeDir / "binding_arm", &generatedBindings));
        writeFile(writeDir / "GeneratedPredeclareArm.hpp", generatePredeclareHeader(root));
        if (writeFile(writeDir / "GeneratedSourceArm.cpp", generateBindingSource(root))) {
            generatedSourceChanged = true;
        }

        writeFile(writeDir / "CodegenDataArm.txt", generateTextInterface(root));

        codegen::platform = Platform::MacIntel;

        writeFile(writeDir / "GeneratedModifyIntel.hpp", generateModifyHeader(root, writeDir / "modify_intel", &generatedModify));
        writeFile(writeDir / "GeneratedBindingIntel.hpp", generateBindingHeader(root, writeDir / "binding_intel", &generatedBindings));
        writeFile(writeDir / "GeneratedPredeclareIntel.hpp", generatePredeclareHeader(root));
        if (writeFile(writeDir / "GeneratedSourceIntel.cpp", generateBindingSource(root))) {
            generatedSourceChanged = true;
        }

        writeFile(writeDir / "CodegenDataIntel.txt", generateTextInterface(root));

        codegen::platform = Platform::Mac;

        writeFile(writeDir / "GeneratedModify.hpp", generateMacHeader("GeneratedModify", "hpp"));
        writeFile(writeDir / "GeneratedBinding.hpp", generateMacHeader("GeneratedBinding", "hpp"));
        writeFile(writeDir / "GeneratedPredeclare.hpp", generateMacHeader("GeneratedPredeclare", "hpp"));
        writeFile(writeDir / "GeneratedSource.cpp", generateMacHeader("GeneratedSource", "cpp"));

        auto now = std::chrono::system_clock::now();
        if (generatedSourceChanged) {
            // force cmake to rebuild generatedsource
            ghc::filesystem::last_write_time(writeDir / "GeneratedSource.cpp", now);
        }

        generateFolderAlias(writeDir, "modify", generatedModify);
        generateFolderAlias(writeDir, "binding", generatedBindings);
    } else {
        // writeFile(writeDir / "GeneratedAddress.cpp", generateAddressHeader(root));
        writeFile(writeDir / "GeneratedModify.hpp", generateModifyHeader(root, writeDir / "modify"));
        writeFile(writeDir / "GeneratedBinding.hpp", generateBindingHeader(root, writeDir / "binding"));
        writeFile(writeDir / "GeneratedPredeclare.hpp", generatePredeclareHeader(root));
        writeFile(writeDir / "GeneratedSource.cpp", generateBindingSource(root));
        writeFile(writeDir / "CodegenData.txt", generateTextInterface(root));
    }

    writeFile(writeDir / "CodegenData.json", generateJsonInterface(root).dump(0));
}

catch (std::exception& e) {
    std::cout << "Codegen error: " << e.what() << "\n";
    return 1;
}
