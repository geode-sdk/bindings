include(ExternalProject)

set(GEODE_CODEGEN_BINARY_OUT ${CMAKE_CURRENT_BINARY_DIR}/codegen)

if (NOT GEODE_BINDINGS_PATH)
	set(GEODE_BINDINGS_PATH ${GEODE_BINDINGS_REPO_PATH}/bindings/${GEODE_GD_VERSION})
endif()

if (NOT SKIP_BUILDING_CODEGEN)

ExternalProject_Add(CodegenProject
	BUILD_ALWAYS ON
	SOURCE_DIR ${GEODE_BINDINGS_REPO_PATH}
	# manually set configure command as to not inherit generator used by geode,
	# this should hopefully fix generator cache mismatch between different projects, however
	# it causes a warning to be shown every time. if you know a better solution please tell us ok thx
	CONFIGURE_COMMAND ${CMAKE_COMMAND} ${GEODE_CODEGEN_CMAKE_ARGS} -DCMAKE_INSTALL_PREFIX:STRING=${GEODE_CODEGEN_BINARY_OUT}
		-DCMAKE_C_COMPILER_LAUNCHER=${CMAKE_C_COMPILER_LAUNCHER} -DCMAKE_CXX_COMPILER_LAUNCHER=${CMAKE_CXX_COMPILER_LAUNCHER}
		-DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
		-S <SOURCE_DIR> -B <BINARY_DIR>
	BUILD_COMMAND ${CMAKE_COMMAND} --build <BINARY_DIR> --config $<CONFIGURATION>
	INSTALL_COMMAND ${CMAKE_COMMAND} --install <BINARY_DIR> --config $<CONFIGURATION>
)

file(GLOB CODEGEN_DEPENDS CONFIGURE_DEPENDS 
	${GEODE_BINDINGS_PATH}/*.bro
	${GEODE_BINDINGS_REPO_PATH}/codegen/src/*.cpp
	${GEODE_BINDINGS_REPO_PATH}/codegen/src/*.hpp
)


file(GLOB CODEGEN_OUTPUTS CONFIGURE_DEPENDS 
	${GEODE_CODEGEN_PATH}/Geode/binding/*.hpp
)

else()

# does nothing
add_custom_target(CodegenProject)

endif()

add_custom_command(
	# DEPENDS ${CODEGEN_DEPENDS}
	DEPENDS CodegenProject
	COMMAND ${GEODE_CODEGEN_BINARY_OUT}/Codegen ${GEODE_TARGET_PLATFORM} ${GEODE_BINDINGS_PATH} ${GEODE_CODEGEN_PATH}
	COMMAND echo codegen > ${GEODE_CODEGEN_PATH}/.stamp
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
	COMMENT "Run Codegen"
	OUTPUT ${GEODE_CODEGEN_PATH}/Geode/GeneratedSource.cpp ${GEODE_CODEGEN_PATH}/Geode/GeneratedAddress.cpp ${GEODE_CODEGEN_PATH}/.stamp ${CODEGEN_OUTPUTS}
)

add_custom_target(CodegenRun
	DEPENDS ${GEODE_CODEGEN_PATH}/.stamp
)

add_dependencies(${PROJECT_NAME} CodegenRun)

# Hacky way to supress the not generated error
if (NOT EXISTS ${GEODE_CODEGEN_PATH}/Geode/GeneratedSource.cpp)
	make_directory(${GEODE_CODEGEN_PATH})
	make_directory(${GEODE_CODEGEN_PATH}/Geode)
	file(TOUCH ${GEODE_CODEGEN_PATH}/Geode/GeneratedSource.cpp)
endif()

if (NOT EXISTS ${GEODE_CODEGEN_PATH}/Geode/GeneratedAddress.cpp)
	make_directory(${GEODE_CODEGEN_PATH})
	make_directory(${GEODE_CODEGEN_PATH}/Geode)
	file(TOUCH ${GEODE_CODEGEN_PATH}/Geode/GeneratedAddress.cpp)
endif()

add_library(GeodeCodegenSources ${GEODE_CODEGEN_PATH}/Geode/GeneratedSource.cpp ${GEODE_CODEGEN_PATH}/Geode/GeneratedAddress.cpp)
target_link_directories(GeodeCodegenSources PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/loader/include/link)
target_link_libraries(GeodeCodegenSources PRIVATE ghc_filesystem GeodeFilesystemImpl fmt TulipHookInclude mat-json)
target_include_directories(GeodeCodegenSources PRIVATE
	${GEODE_CODEGEN_PATH}
	${GEODE_LOADER_PATH}/include
	${GEODE_LOADER_PATH}/include/Geode/cocos/include
	${GEODE_LOADER_PATH}/include/Geode/cocos/extensions
	${GEODE_LOADER_PATH}/include/Geode/fmod
)
set_target_properties(GeodeCodegenSources PROPERTIES CXX_VISIBILITY_PRESET hidden)
target_compile_features(GeodeCodegenSources PUBLIC cxx_std_20)
