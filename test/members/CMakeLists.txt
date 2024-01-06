cmake_minimum_required(VERSION 3.21)

project(TestMembers VERSION 1.0.0)

include(../../cmake/CPM.cmake)
set(MAT_JSON_AS_INTERFACE ON)
CPMAddPackage("gh:geode-sdk/json#9f54cca")
CPMAddPackage("gh:gulrak/filesystem#3e5b930")

add_library(${PROJECT_NAME} SHARED)

# even though the other source files do nothing on windows,
# they still take a little bit to compile, thanks to msvc being very fast!
if (WIN32)
	target_sources(${PROJECT_NAME} PRIVATE Windows.cpp)
else()
	target_sources(${PROJECT_NAME} PRIVATE MacOS.cpp Android32.cpp Android64.cpp)
endif()

target_compile_features(${PROJECT_NAME} PUBLIC cxx_std_20)

cmake_path(SET GEODE_LOADER_PATH $ENV{GEODE_SDK}/loader)
cmake_path(SET GEODE_BINDINGS_REPO_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../../)
set(GEODE_CODEGEN_PATH ${CMAKE_CURRENT_BINARY_DIR}/codegenned)
set(GEODE_GD_VERSION 2.200)

include(Platform.cmake)
include(Codegen.cmake)

target_include_directories(${PROJECT_NAME} PRIVATE
	${GEODE_CODEGEN_PATH}
	${GEODE_LOADER_PATH}/include
	${GEODE_LOADER_PATH}/include/Geode/cocos/include
	${GEODE_LOADER_PATH}/include/Geode/cocos/extensions
	${GEODE_LOADER_PATH}/include/Geode/fmod
)

if (WIN32)
	# without this, some stl structures can have a wrong size when cross compiling from linux
	add_compile_definitions(_HAS_ITERATOR_DEBUGGING=0)
endif()

target_compile_definitions(${PROJECT_NAME} PRIVATE -DGEODE_DONT_WARN_INCORRECT_MEMBERS)

if (USE_EVIL_SCRIPT)
	target_compile_definitions(${PROJECT_NAME} PRIVATE -DUSE_EVIL_SCRIPT)
endif()

target_link_libraries(${PROJECT_NAME} PRIVATE ghc_filesystem mat-json)

add_dependencies(${PROJECT_NAME} CodegenRun)
