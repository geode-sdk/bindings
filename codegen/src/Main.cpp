#include "Shared.hpp"

#include <ghc/filesystem.hpp> // bruh

using namespace codegen;

std::map<void const*, size_t> codegen::idMap;

std::string generateMacHeader(std::string filebase, std::string file_ext) {
    return fmt::format(R"GEN(
#ifdef GEODE_IS_ARM_MAC
#include "{0}Arm.{1}"
#else
#include "{0}Intel.{1}"
#endif
)GEN", filebase, file_ext);
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
    //     writeFile(ghc::filesystem::path(argv[3]), generateJsonInterface(root));
    //     return 0;
    // }

    if (p == "Win32") codegen::platform = Platform::Windows;
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
    } else {
        ghc::filesystem::create_directories(writeDir / "modify");
        ghc::filesystem::create_directories(writeDir / "binding");
    }

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

        codegen::platform = Platform::MacArm;

        writeFile(writeDir / "GeneratedModifyArm.hpp", generateModifyHeader(root, writeDir / "modify_arm"));
        writeFile(writeDir / "GeneratedBindingArm.hpp", generateBindingHeader(root, writeDir / "binding_arm"));
        writeFile(writeDir / "GeneratedPredeclareArm.hpp", generatePredeclareHeader(root));
        writeFile(writeDir / "GeneratedSourceArm.cpp", generateBindingSource(root));
        writeFile(writeDir / "CodegenDataArm.txt", generateJsonInterface(root));

        codegen::platform = Platform::MacIntel;

        writeFile(writeDir / "GeneratedModifyIntel.hpp", generateModifyHeader(root, writeDir / "modify_intel"));
        writeFile(writeDir / "GeneratedBindingIntel.hpp", generateBindingHeader(root, writeDir / "binding_intel"));
        writeFile(writeDir / "GeneratedPredeclareIntel.hpp", generatePredeclareHeader(root));
        writeFile(writeDir / "GeneratedSourceIntel.cpp", generateBindingSource(root));
        writeFile(writeDir / "CodegenDataIntel.txt", generateJsonInterface(root));

        codegen::platform = Platform::Mac;

        writeFile(writeDir / "GeneratedModify.hpp", generateMacHeader("GeneratedModify", "hpp"));
        writeFile(writeDir / "GeneratedBinding.hpp", generateMacHeader("GeneratedBinding", "hpp"));
        writeFile(writeDir / "GeneratedPredeclare.hpp", generateMacHeader("GeneratedPredeclare", "hpp"));
        writeFile(writeDir / "GeneratedSource.cpp", generateMacHeader("GeneratedSource", "cpp"));
    } else {
        // writeFile(writeDir / "GeneratedAddress.cpp", generateAddressHeader(root));
        writeFile(writeDir / "GeneratedModify.hpp", generateModifyHeader(root, writeDir / "modify"));
        writeFile(writeDir / "GeneratedBinding.hpp", generateBindingHeader(root, writeDir / "binding"));
        writeFile(writeDir / "GeneratedPredeclare.hpp", generatePredeclareHeader(root));
        writeFile(writeDir / "GeneratedSource.cpp", generateBindingSource(root));
        writeFile(writeDir / "CodegenData.txt", generateJsonInterface(root));
    }

}

catch (std::exception& e) {
    std::cout << "Codegen error: " << e.what() << "\n";
    return 1;
}
