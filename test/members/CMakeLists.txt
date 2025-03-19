cmake_minimum_required(VERSION 3.21)

project(TestMembers VERSION 1.0.0)

add_library(${PROJECT_NAME} SHARED)

set(GEODE_IS_MEMBER_TEST ON)
add_compile_definitions(GEODE_IS_MEMBER_TEST)

# even though the other source files do nothing on windows,
# they still take a little bit to compile, thanks to msvc being very fast!
if (WIN32)
	target_sources(${PROJECT_NAME} PRIVATE Windows.cpp)
elseif(APPLE)
	if (IOS)
		target_sources(${PROJECT_NAME} PRIVATE iOS.cpp)
	else()
		target_sources(${PROJECT_NAME} PRIVATE MacOSArm.cpp MacOSIntel.cpp)
	endif()
elseif(ANDROID)
	if (ANDROID_ABI STREQUAL "armeabi-v7a")
		target_sources(${PROJECT_NAME} PRIVATE Android32.cpp)
	elseif(ANDROID_ABI STREQUAL "arm64-v8a")
		target_sources(${PROJECT_NAME} PRIVATE Android64.cpp)
	endif()
endif()

target_compile_features(${PROJECT_NAME} PUBLIC cxx_std_20)

cmake_path(SET GEODE_LOADER_PATH $ENV{GEODE_SDK}/loader)

include($ENV{GEODE_SDK}/cmake/PlatformDetect.cmake)

if (NOT DEFINED GEODE_GD_VERSION)
	set(GEODE_GD_VERSION 2.2074)
	set(GEODE_COMP_GD_VERSION 22074)
endif()

if (WIN32)
	# without this, some stl structures can have a wrong size when cross compiling from linux
	add_compile_definitions(_HAS_ITERATOR_DEBUGGING=0)
endif()

if (${CMAKE_CXX_COMPILER_ID} STREQUAL Clang OR ${CMAKE_CXX_COMPILER_ID} STREQUAL AppleClang)
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

if (GEODE_TARGET_PLATFORM STREQUAL "iOS")
	return()
endif()

target_sources(${PROJECT_NAME} PRIVATE ${GEODE_MEMBER_TEST_CODEGEN_PATH}/Geode/GeneratedSource.cpp)

if (WIN32)
	if (MSVC)
		target_compile_options(${PROJECT_NAME} PRIVATE /bigobj)
	endif()
endif()

include(../../cmake/CPM.cmake)

CPMAddPackage("gh:geode-sdk/TulipHook@2.4.3")

target_link_libraries(${PROJECT_NAME} PRIVATE TulipHookInclude)

if (GEODE_TARGET_PLATFORM STREQUAL "MacOS")
	set(GEODE_MEMBER_TEST_PLATFORM "mac")
	set(GEODE_MEMBER_TEST_BINARY "Geode.dylib")
	target_link_libraries(${PROJECT_NAME} PRIVATE
		${GEODE_LOADER_PATH}/include/link/macos/libfmod.dylib
	)
elseif (GEODE_TARGET_PLATFORM STREQUAL "Win64")
	set(GEODE_MEMBER_TEST_PLATFORM "win")
	set(GEODE_MEMBER_TEST_BINARY "Geode.lib")
	target_link_libraries(${PROJECT_NAME} PRIVATE
		${GEODE_LOADER_PATH}/include/link/win64/libcocos2d.lib
		${GEODE_LOADER_PATH}/include/link/win64/libExtensions.lib
		${GEODE_LOADER_PATH}/include/link/win64/glew32.lib
		${GEODE_LOADER_PATH}/include/link/win64/fmod.lib
	)
elseif (GEODE_TARGET_PLATFORM STREQUAL "Android64")
	set(GEODE_MEMBER_TEST_PLATFORM "android64")
	set(GEODE_MEMBER_TEST_BINARY "Geode.android64.so")
	target_link_libraries(${PROJECT_NAME} PRIVATE
		${GEODE_LOADER_PATH}/include/link/android64/libcocos2dcpp.so
		${GEODE_LOADER_PATH}/include/link/android64/libfmod.so
	)
elseif (GEODE_TARGET_PLATFORM STREQUAL "Android32")
	set(GEODE_MEMBER_TEST_PLATFORM "android32")
	set(GEODE_MEMBER_TEST_BINARY "Geode.android32.so")
	target_link_libraries(${PROJECT_NAME} PRIVATE
		${GEODE_LOADER_PATH}/include/link/android32/libcocos2dcpp.so
		${GEODE_LOADER_PATH}/include/link/android32/libfmod.so
	)
endif()

execute_process(
	COMMAND git ls-remote https://github.com/geode-sdk/geode -t nightly
	WORKING_DIRECTORY $ENV{GEODE_SDK}
	OUTPUT_VARIABLE GEODE_MEMBER_TEST_GIT_OUTPUT
	OUTPUT_STRIP_TRAILING_WHITESPACE
)
string(REGEX MATCH "^[0-9a-f]+" GEODE_MEMBER_TEST_GIT_HASH ${GEODE_MEMBER_TEST_GIT_OUTPUT})
string(SUBSTRING ${GEODE_MEMBER_TEST_GIT_HASH} 0 7 GEODE_MEMBER_TEST_GIT_HASH)

message(STATUS "Downloading Geode binaries from ${GEODE_MEMBER_TEST_GIT_HASH}")
file(DOWNLOAD
	https://github.com/geode-sdk/geode/releases/download/nightly/geode-${GEODE_MEMBER_TEST_GIT_HASH}-${GEODE_MEMBER_TEST_PLATFORM}.zip
	${CMAKE_CURRENT_BINARY_DIR}/geode.zip
	STATUS GEODE_MEMBER_TEST_DOWNLOAD_STATUS
)
list(GET GEODE_MEMBER_TEST_DOWNLOAD_STATUS 0 GEODE_MEMBER_TEST_DOWNLOAD_STATUS_CODE)
if (GEODE_MEMBER_TEST_DOWNLOAD_STATUS_CODE EQUAL 0)
	message(STATUS "Downloaded Geode binaries")
else()
	list(GET GEODE_MEMBER_TEST_DOWNLOAD_STATUS 1 GEODE_MEMBER_TEST_DOWNLOAD_STATUS_MESSAGE)
	message(FATAL_ERROR "Downloading Geode binaries failed: ${GEODE_MEMBER_TEST_DOWNLOAD_STATUS_MESSAGE}")
endif()

file(ARCHIVE_EXTRACT
	INPUT ${CMAKE_CURRENT_BINARY_DIR}/geode.zip
	DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/geode
	PATTERNS ${GEODE_MEMBER_TEST_BINARY}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${CMAKE_CURRENT_BINARY_DIR}/geode/${GEODE_MEMBER_TEST_BINARY})
