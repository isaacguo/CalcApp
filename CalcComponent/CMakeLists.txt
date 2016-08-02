project(CalcComponent CXX)
cmake_minimum_required(VERSION 2.8.0)

set(CMAKE_MODULE_PATH ${CalcComponent_SOURCE_DIR}/cmake ${CMAKE_MODULE_PATH})

include(CalcVersion)

set_version(MAJOR 0 MINOR 0 PATCH 1)

#string(TOLOWER, "${PROJECT_NAME}" PROJECTNAMEL)

set(CALC_COMPONENT_TARGET ${PROJECT_NAME})

calc_target_output_name(${CALC_COMPONENT_TARGET} CALC_TAEGET_OUTPUT_NAME)



include_directories(
  ${CalcComponent_SOURCE_DIR}/include
  #${CalcComponent_SOURCE_DIR}/
)

#######################################################
#
#  Defines the CalcComponent shared library
#
#######################################################
add_library(CalcComponent SHARED src/CalcEngine.cpp)

set_target_properties(CalcComponent
	PROPERTIES
	VERSION 0.0.1 #${CALCCOMPOENT_VERSION}
	SOVERSION 0.0.1 #${CALCCOMPOENT_VERSION}
	)
########################################################################
#
# Install rules
install(TARGETS CalcComponent
        DESTINATION lib)
install(DIRECTORY ${CalcComponent_SOURCE_DIR}/include/
        DESTINATION include)
