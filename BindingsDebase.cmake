file(GLOB GEODE_INLINE_SOURCES ${GEODE_BINDINGS_PATH}/inline/*.cpp)
file(GLOB GEODE_GENERATED_SOURCES ${GEODE_CODEGEN_PATH}/Geode/source/*.cpp)

debase_library(${PROJECT_NAME}
  FILES ${GEODE_GENERATED_SOURCES}
  CONFIG "${GEODE_CODEGEN_PATH}/Geode/source/DebaseConfig.json"
  OUTPUT ir
)

debase_sources(${PROJECT_NAME} PRIVATE
  ${GEODE_CODEGEN_PATH}/Geode/GeneratedSource.cpp
  ${GEODE_INLINE_SOURCES})

debase_include_directories(${PROJECT_NAME}
  ${GEODE_INCLUDE_SYSTEM_SPECIFIER} PUBLIC
	${GEODE_CODEGEN_PATH}
)

#set_target_properties(${PROJECT_NAME}__sources PROPERTIES
#  UNITY_BUILD ON
#  UNITY_BUILD_BATCH_SIZE 128
#)

if (NOT BINDINGS_VERSIONED_ONLY)
	debase_include_directories(${PROJECT_NAME} ${GEODE_INCLUDE_SYSTEM_SPECIFIER} PUBLIC
		${CMAKE_CURRENT_SOURCE_DIR}/bindings/include
	)
endif()

set_target_properties(${PROJECT_NAME} PROPERTIES CXX_VISIBILITY_PRESET hidden)
debase_compile_features(${PROJECT_NAME} PUBLIC cxx_std_23)

debase_compile_definitions(${PROJECT_NAME} PUBLIC GEODE_COMP_GD_VERSION=${GEODE_COMP_GD_VERSION})

if (WIN32)
	debase_compile_definitions(${PROJECT_NAME} PUBLIC -DNOMINMAX)
	if (MSVC)
		debase_compile_options(${PROJECT_NAME} PUBLIC /bigobj)
	endif()
elseif (APPLE)
	debase_compile_options(${PROJECT_NAME} PUBLIC -ffunction-sections -fdata-sections)
	debase_link_options(${PROJECT_NAME} PUBLIC -dead_strip)
	if ("${CMAKE_SYSTEM_NAME}" STREQUAL "iOS" OR IOS)
		add_definitions(-DGLES_SILENCE_DEPRECATION)
	endif()
elseif (ANDROID)
	debase_compile_options(${PROJECT_NAME} PUBLIC -ffunction-sections -fdata-sections)
	debase_link_options(${PROJECT_NAME} PUBLIC -Wl,--gc-sections)
endif()
