cmake_minimum_required(VERSION 3.21)

project(TestMembers VERSION 1.0.0)

include(../../cmake/CPM.cmake)
set(MAT_JSON_AS_INTERFACE ON)
CPMAddPackage("gh:geode-sdk/json#9f54cca")
CPMAddPackage("gh:fmtlib/fmt#10.1.1")
CPMAddPackage("gh:gulrak/filesystem#3e5b930")

set(CMAKE_WARN_DEPRECATED OFF CACHE BOOL "" FORCE)
CPMAddPackage("gh:geode-sdk/TulipHook#3e32b0c")
set(CMAKE_WARN_DEPRECATED ON CACHE BOOL "" FORCE)

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
else()
	target_compile_options(${PROJECT_NAME} PRIVATE -Wno-invalid-offsetof -Wno-inaccessible-base)
endif()

target_compile_definitions(${PROJECT_NAME} PRIVATE -DGEODE_DONT_WARN_INCORRECT_MEMBERS)

if (USE_HACKY_SCRIPT)
	target_compile_definitions(${PROJECT_NAME} PRIVATE -DUSE_HACKY_SCRIPT)
endif()

add_subdirectory(../.. bindings)

target_include_directories(GeodeBindings PUBLIC
	${GEODE_LOADER_PATH}/include
	${GEODE_LOADER_PATH}/include/Geode/cocos/include
	${GEODE_LOADER_PATH}/include/Geode/cocos/extensions
	${GEODE_LOADER_PATH}/include/Geode/fmod
)
target_link_directories(GeodeBindings PUBLIC ${GEODE_LOADER_PATH}/include/link)
target_link_libraries(GeodeBindings PUBLIC ghc_filesystem fmt TulipHookInclude mat-json)
target_link_libraries(${PROJECT_NAME} PUBLIC GeodeBindings)
