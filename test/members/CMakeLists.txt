cmake_minimum_required(VERSION 3.21)

project(TestMembers VERSION 1.0.0)

add_library(${PROJECT_NAME} SHARED)

set(GEODE_IS_MEMBER_TEST ON)
add_compile_definitions(GEODE_IS_MEMBER_TEST)

# even though the other source files do nothing on windows,
# they still take a little bit to compile, thanks to msvc being very fast!
if (WIN32)
	target_sources(${PROJECT_NAME} PRIVATE Windows.cpp)
else()
	target_sources(${PROJECT_NAME} PRIVATE MacOSArm.cpp MacOSIntel.cpp Android32.cpp Android64.cpp iOS.cpp)
endif()

target_compile_features(${PROJECT_NAME} PUBLIC cxx_std_20)

cmake_path(SET GEODE_LOADER_PATH $ENV{GEODE_SDK}/loader)

include($ENV{GEODE_SDK}/cmake/PlatformDetect.cmake)

if (NOT DEFINED GEODE_GD_VERSION)
	set(GEODE_GD_VERSION 2.206)
	set(GEODE_COMP_GD_VERSION 22060)
endif()

if (WIN32)
	# without this, some stl structures can have a wrong size when cross compiling from linux
	add_compile_definitions(_HAS_ITERATOR_DEBUGGING=0)
endif()

if (${CMAKE_CXX_COMPILER_ID} STREQUAL Clang)
	target_compile_options(${PROJECT_NAME} PRIVATE -Wno-invalid-offsetof -Wno-inaccessible-base)
endif()

target_compile_definitions(${PROJECT_NAME} PRIVATE -DGEODE_DONT_WARN_INCORRECT_MEMBERS)
set(ENV{CODEGEN_FORCE_PUBLIC_MEMBER} 1)

if (USE_HACKY_SCRIPT)
	target_compile_definitions(${PROJECT_NAME} PRIVATE -DUSE_HACKY_SCRIPT)
endif()

add_subdirectory(../.. bindings)

target_include_directories(${PROJECT_NAME} PRIVATE
	${GEODE_MEMBER_TEST_CODEGEN_PATH}
	${GEODE_LOADER_PATH}/include
	${GEODE_LOADER_PATH}/include/Geode/cocos/include
	${GEODE_LOADER_PATH}/include/Geode/cocos/extensions
	${GEODE_LOADER_PATH}/include/Geode/fmod
	${GeodeBindings_SOURCE_DIR}/bindings/include
)
target_link_directories(${PROJECT_NAME} PRIVATE ${GEODE_LOADER_PATH}/include/link)
