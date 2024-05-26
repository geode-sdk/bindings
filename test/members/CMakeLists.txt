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
	target_sources(${PROJECT_NAME} PRIVATE MacOS.cpp Android32.cpp Android64.cpp)
endif()

target_compile_features(${PROJECT_NAME} PUBLIC cxx_std_20)

cmake_path(SET GEODE_LOADER_PATH $ENV{GEODE_SDK}/loader)

include($ENV{GEODE_SDK}/cmake/PlatformDetect.cmake)

if (NOT DEFINED GEODE_GD_VERSION)
	if (${GEODE_TARGET_PLATFORM} STREQUAL "Win32")
		set(GEODE_GD_VERSION 2.204)
		set(GEODE_COMP_GD_VERSION 22040)
	elseif (${GEODE_TARGET_PLATFORM} STREQUAL "Android32" OR ${GEODE_TARGET_PLATFORM} STREQUAL "Android64")
		set(GEODE_GD_VERSION 2.205)
		set(GEODE_COMP_GD_VERSION 22050)
	else()
		set(GEODE_GD_VERSION 2.200)
		set(GEODE_COMP_GD_VERSION 22000)
	endif()
endif()

if (WIN32)
	# without this, some stl structures can have a wrong size when cross compiling from linux
	add_compile_definitions(_HAS_ITERATOR_DEBUGGING=0)
endif()

if (${CMAKE_CXX_COMPILER_ID} STREQUAL Clang)
	target_compile_options(${PROJECT_NAME} PRIVATE -Wno-invalid-offsetof -Wno-inaccessible-base)
endif()

target_compile_definitions(${PROJECT_NAME} PRIVATE -DGEODE_DONT_WARN_INCORRECT_MEMBERS)

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
