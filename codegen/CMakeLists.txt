cmake_minimum_required(VERSION 3.21 FATAL_ERROR)
project(Codegen LANGUAGES C CXX)

include(../cmake/CPM.cmake)

CPMAddPackage("gh:fmtlib/fmt#9.1.0")
CPMAddPackage("gh:geode-sdk/Broma#fdf00ae")

file(GLOB SOURCES
	${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp
)

add_executable(${PROJECT_NAME}
	# glob sucks so just list em out
	src/Main.cpp
	src/AddressGen.cpp
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

target_precompile_headers(Codegen PRIVATE 
	${CMAKE_CURRENT_SOURCE_DIR}/src/Shared.hpp
)

install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX})
