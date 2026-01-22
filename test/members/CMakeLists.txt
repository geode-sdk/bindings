cmake_minimum_required(VERSION 3.21)

project(TestMembers VERSION 1.0.0)

add_library(${PROJECT_NAME} SHARED)

set(GEODE_IS_MEMBER_TEST ON)
add_compile_definitions(GEODE_IS_MEMBER_TEST)

target_compile_features(${PROJECT_NAME} PUBLIC cxx_std_23)

include(../../cmake/CPM.cmake)

set(MAT_JSON_AS_INTERFACE ON)
CPMAddPackage("gh:fmtlib/fmt#11.1.4")
CPMAddPackage("gh:geode-sdk/json@3.2.1")
CPMAddPackage("gh:geode-sdk/TulipHook@2.4.4")
CPMAddPackage("gh:zhihaoy/nontype_functional#8ec2e09")

if (WIN32)
	target_compile_definitions(fmt PRIVATE _HAS_ITERATOR_DEBUGGING=0)
endif()

target_link_libraries(${PROJECT_NAME} PRIVATE fmt GeodeResult mat-json TulipHookInclude nontype_functional)

cmake_path(SET GEODE_LOADER_PATH $ENV{GEODE_SDK}/loader)

include($ENV{GEODE_SDK}/cmake/PlatformDetect.cmake)

if (GEODE_TARGET_PLATFORM STREQUAL "Win64")
	if (NOT DEFINED GEODE_GD_VERSION)
		set(GEODE_GD_VERSION 2.2081)
		set(GEODE_COMP_GD_VERSION 22081)
	endif()

	set(GEODE_MEMBER_TEST_PLATFORM "win")
	set(GEODE_MEMBER_TEST_BINARY "Geode.lib")

	target_link_libraries(${PROJECT_NAME} PRIVATE
		${GEODE_LOADER_PATH}/include/link/win64/libcocos2d.lib
		${GEODE_LOADER_PATH}/include/link/win64/libExtensions.lib
		${GEODE_LOADER_PATH}/include/link/win64/glew32.lib
		${GEODE_LOADER_PATH}/include/link/win64/fmod.lib
		opengl32
	)

	target_sources(${PROJECT_NAME} PRIVATE ${GEODE_GD_VERSION}/Windows.cpp)
	target_compile_definitions(${PROJECT_NAME} PUBLIC -DNOMINMAX)
elseif (GEODE_TARGET_PLATFORM STREQUAL "Android64")
	if (NOT DEFINED GEODE_GD_VERSION)
		set(GEODE_GD_VERSION 2.2074)
		set(GEODE_COMP_GD_VERSION 22074)
	endif()

	set(GEODE_MEMBER_TEST_PLATFORM "android64")
	set(GEODE_MEMBER_TEST_BINARY "Geode.android64.so")

	target_link_libraries(${PROJECT_NAME} PRIVATE
		${GEODE_LOADER_PATH}/include/link/android64/libcocos2dcpp.so
		${GEODE_LOADER_PATH}/include/link/android64/libfmod.so
		GLESv2
	)

	target_sources(${PROJECT_NAME} PRIVATE ${GEODE_GD_VERSION}/Android64.cpp)
elseif (GEODE_TARGET_PLATFORM STREQUAL "Android32")
	if (NOT DEFINED GEODE_GD_VERSION)
		set(GEODE_GD_VERSION 2.2074)
		set(GEODE_COMP_GD_VERSION 22074)
	endif()

	set(GEODE_MEMBER_TEST_PLATFORM "android32")
	set(GEODE_MEMBER_TEST_BINARY "Geode.android32.so")

	target_link_libraries(${PROJECT_NAME} PRIVATE
		${GEODE_LOADER_PATH}/include/link/android32/libcocos2dcpp.so
		${GEODE_LOADER_PATH}/include/link/android32/libfmod.so
		GLESv2
	)

	target_sources(${PROJECT_NAME} PRIVATE ${GEODE_GD_VERSION}/Android32.cpp)
elseif (GEODE_TARGET_PLATFORM STREQUAL "MacOS")
	if (NOT DEFINED GEODE_GD_VERSION)
		set(GEODE_GD_VERSION 2.2081)
		set(GEODE_COMP_GD_VERSION 22081)
	endif()

	set(GEODE_MEMBER_TEST_PLATFORM "mac")
	set(GEODE_MEMBER_TEST_BINARY "Geode.dylib")

	target_link_libraries(${PROJECT_NAME} PRIVATE
		"-framework OpenGL"
		${GEODE_LOADER_PATH}/include/link/macos/libfmod.dylib
	)

	add_definitions(-DGL_SILENCE_DEPRECATION)
	target_sources(${PROJECT_NAME} PRIVATE ${GEODE_GD_VERSION}/MacOSArm.cpp ${GEODE_GD_VERSION}/MacOSIntel.cpp)
elseif (GEODE_TARGET_PLATFORM STREQUAL "iOS")
	if (NOT DEFINED GEODE_GD_VERSION)
		set(GEODE_GD_VERSION 2.2074)
		set(GEODE_COMP_GD_VERSION 22074)
	endif()

	set(GEODE_MEMBER_TEST_PLATFORM "ios")
	set(GEODE_MEMBER_TEST_BINARY "Geode.ios.dylib")

	target_link_libraries(${PROJECT_NAME} PRIVATE
		"-framework OpenGLES"
	)

	add_definitions(-DGLES_SILENCE_DEPRECATION)
	target_sources(${PROJECT_NAME} PRIVATE ${GEODE_GD_VERSION}/iOS.cpp)
endif()

target_compile_definitions(${PROJECT_NAME} PRIVATE GEODE_MOD_ID="${GEODE_MOD_ID}")

target_compile_definitions(${PROJECT_NAME} PRIVATE GEODE_COMP_GD_VERSION=${GEODE_COMP_GD_VERSION})

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
	${TestMembers_SOURCE_DIR}/include
)

if (WIN32)
	if (MSVC)
		target_compile_options(${PROJECT_NAME} PRIVATE /bigobj)
	elseif(CMAKE_CXX_COMPILER_ID MATCHES "Clang")
		target_link_options(${PROJECT_NAME} PRIVATE "-Wl,/errorlimit:0")
	endif()
else()
	# Doesnt work on macos
	# target_link_options(${PROJECT_NAME} PRIVATE "-Wl,--error-limit=0")
endif()

file(GLOB GEODE_INLINE_SOURCES ${GEODE_MEMBER_TEST_BINDINGS_PATH}/inline/*.cpp)
file(GLOB GEODE_GENERATED_SOURCES ${GEODE_MEMBER_TEST_CODEGEN_PATH}/Geode/source/*.cpp)

target_sources(${PROJECT_NAME} PRIVATE ${GEODE_MEMBER_TEST_CODEGEN_PATH}/Geode/GeneratedSource.cpp ${GEODE_INLINE_SOURCES} ${GEODE_GENERATED_SOURCES})

set_target_properties(${PROJECT_NAME} PROPERTIES
    UNITY_BUILD ON
    UNITY_BUILD_BATCH_SIZE 128
)

message(STATUS "Fetching Geode nightly Git hash")

execute_process(
	COMMAND git ls-remote https://github.com/geode-sdk/geode -t nightly
	WORKING_DIRECTORY $ENV{GEODE_SDK}
	OUTPUT_VARIABLE GEODE_MEMBER_TEST_GIT_OUTPUT
	ERROR_VARIABLE GEODE_MEMBER_TEST_GIT_ERROR
	OUTPUT_STRIP_TRAILING_WHITESPACE
)
if (GEODE_MEMBER_TEST_GIT_ERROR)
	message(STATUS "Failed to fetch Geode nightly Git hash, using existing binaries")
else()
	string(REGEX MATCH "^[0-9a-f]+" GEODE_MEMBER_TEST_GIT_HASH ${GEODE_MEMBER_TEST_GIT_OUTPUT})
	string(SUBSTRING ${GEODE_MEMBER_TEST_GIT_HASH} 0 7 GEODE_MEMBER_TEST_GIT_HASH)

	if ("$CACHE{GEODE_MEMBER_TEST_GIT_HASH}" STREQUAL "${GEODE_MEMBER_TEST_GIT_HASH}")
		message(STATUS "Using cached Geode binaries from ${GEODE_MEMBER_TEST_GIT_HASH}")
	else()
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

		set(GEODE_MEMBER_TEST_GIT_HASH ${GEODE_MEMBER_TEST_GIT_HASH} CACHE STRING "Git hash of the Geode binaries" FORCE)

		file(ARCHIVE_EXTRACT
			INPUT ${CMAKE_CURRENT_BINARY_DIR}/geode.zip
			DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/geode
			PATTERNS ${GEODE_MEMBER_TEST_BINARY}
		)
	endif()
endif()

target_link_libraries(${PROJECT_NAME} PRIVATE ${CMAKE_CURRENT_BINARY_DIR}/geode/${GEODE_MEMBER_TEST_BINARY})
