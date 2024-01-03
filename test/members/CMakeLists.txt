cmake_minimum_required(VERSION 3.21)

project(TestMembers VERSION 1.0.0)

include(../../cmake/CPM.cmake)
CPMAddPackage("gh:geode-sdk/json#a47f570")
CPMAddPackage("gh:gulrak/filesystem#3e5b930")

add_library(${PROJECT_NAME} SHARED MacOS.cpp Windows.cpp Android32.cpp Android64.cpp)

target_compile_features(${PROJECT_NAME} PUBLIC cxx_std_20)

cmake_path(SET GEODE_LOADER_PATH ${GEODE_LOADER_PATH})
cmake_path(SET GEODE_BINDINGS_REPO_PATH ${GEODE_BINDINGS_REPO_PATH})
set(GEODE_CODEGEN_PATH ${CMAKE_CURRENT_BINARY_DIR}/codegenned)
set(GEODE_GD_VERSION 2.200)

include(Codegen.cmake)

target_include_directories(${PROJECT_NAME} PRIVATE
	${GEODE_CODEGEN_PATH}
	${GEODE_LOADER_PATH}/include
	${GEODE_LOADER_PATH}/include/Geode/cocos/include
	${GEODE_LOADER_PATH}/include/Geode/cocos/extensions
	${GEODE_LOADER_PATH}/include/Geode/fmod
)

target_compile_definitions(${PROJECT_NAME} PRIVATE -DGEODE_DONT_WARN_INCORRECT_MEMBERS)

target_link_libraries(${PROJECT_NAME} PRIVATE ghc_filesystem mat-json)

add_dependencies(${PROJECT_NAME} CodegenRun)