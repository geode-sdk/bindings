cmake_minimum_required(VERSION 3.21 FATAL_ERROR)
project(Codegen LANGUAGES C CXX)

include(../cmake/CPM.cmake)

CPMAddPackage("gh:fmtlib/fmt#10.1.1")
CPMAddPackage("gh:geode-sdk/Broma#1a6120c")

file(GLOB SOURCES
	${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp
)

add_executable(${PROJECT_NAME}
	# glob sucks so just list em out
	src/Main.cpp
	src/AndroidSymbol.cpp
	src/BindingGen.cpp
	src/JsonInterfaceGen.cpp
	src/ModifyGen.cpp
	src/PredeclareGen.cpp
	src/SourceGen.cpp
)
target_compile_features(Codegen PUBLIC cxx_std_17)

target_link_libraries(Codegen PRIVATE fmt::fmt Broma)
target_include_directories(Codegen PRIVATE 
	${CMAKE_CURRENT_SOURCE_DIR}/src
)

if (NOT DEFINED CMAKE_CXX_COMPILER_LAUNCHER OR CMAKE_CXX_COMPILER_LAUNCHER STREQUAL "" OR
	CMAKE_CXX_COMPILER_LAUNCHER MATCHES "sccache(|.exe)$" AND
	CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
	target_precompile_headers(Codegen PRIVATE
		${CMAKE_CURRENT_SOURCE_DIR}/src/Shared.hpp
	)
endif ()

install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX})
