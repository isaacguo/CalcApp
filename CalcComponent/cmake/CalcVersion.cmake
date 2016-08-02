################################################################################
# SociVersion.cmake - part of CMake configuration of SOCI library
################################################################################
# Copyright (C) 2010 Mateusz Loskot <mateusz@loskot.net>
#
# Distributed under the Boost Software License, Version 1.0.
# (See accompanying file LICENSE_1_0.txt or copy at
# http://www.boost.org/LICENSE_1_0.txt)
################################################################################
# Macros in this module:
#   
#   set_version - defines version information for SOCI library
#
################################################################################

# Defines version information for SOCI library
#
# set_version(MAJOR major_version MINOR minor_version PATCH patch_level)
#
#    MAJOR.MINOR version is used to set SOVERSION
#

macro(list_contains var value)
  set(${var})
  foreach (value2 ${ARGN})
    if (${value} STREQUAL ${value2})
      set(${var} TRUE)
    endif (${value} STREQUAL ${value2})
  endforeach (value2)
endmacro(list_contains)

# The parse_arguments macro will take the arguments of another macro and
# define several variables. The first argument to parse_arguments is a
# prefix to put on all variables it creates. The second argument is a
# list of names, and the third argument is a list of options. Both of
# these lists should be quoted. The rest of parse_arguments are
# arguments from another macro to be parsed.
# 
#     parse_arguments(prefix arg_names options arg1 arg2...) 
# 
# For each item in options, parse_arguments will create a variable with
# that name, prefixed with prefix_. So, for example, if prefix is
# MY_MACRO and options is OPTION1;OPTION2, then parse_arguments will
# create the variables MY_MACRO_OPTION1 and MY_MACRO_OPTION2. These
# variables will be set to true if the option exists in the command line
# or false otherwise.
# 
# For each item in arg_names, parse_arguments will create a variable
# with that name, prefixed with prefix_. Each variable will be filled
# with the arguments that occur after the given arg_name is encountered
# up to the next arg_name or the end of the arguments. All options are
# removed from these lists. parse_arguments also creates a
# prefix_DEFAULT_ARGS variable containing the list of all arguments up
# to the first arg_name encountered.
macro(parse_arguments prefix arg_names option_names)
  set(DEFAULT_ARGS)
  foreach(arg_name ${arg_names})
    set(${prefix}_${arg_name})
  endforeach(arg_name)
  foreach(option ${option_names})
    set(${prefix}_${option} FALSE)
  endforeach(option)

  set(current_arg_name DEFAULT_ARGS)
  set(current_arg_list)
  foreach(arg ${ARGN})
    list_contains(is_arg_name ${arg} ${arg_names})
    if (is_arg_name)
      set(${prefix}_${current_arg_name} ${current_arg_list})
      set(current_arg_name ${arg})
      set(current_arg_list)
    else (is_arg_name)
      list_contains(is_option ${arg} ${option_names})
      if (is_option)
        set(${prefix}_${arg} TRUE)
      else (is_option)
        set(current_arg_list ${current_arg_list} ${arg})
      endif (is_option)
    endif (is_arg_name)
  endforeach(arg)
  set(${prefix}_${current_arg_name} ${current_arg_list})
endmacro(parse_arguments)


macro(set_version)
  parse_arguments(THIS_VERSION "MAJOR;MINOR;PATCH;"
    ""
    ${ARGN})

  # Set version components
  set(${PROJECT_NAME}_VERSION_MAJOR ${THIS_VERSION_MAJOR})
  set(${PROJECT_NAME}_VERSION_MINOR ${THIS_VERSION_MINOR})
  set(${PROJECT_NAME}_VERSION_PATCH ${THIS_VERSION_PATCH})

  # Set VERSION string
  set(${PROJECT_NAME}_VERSION
    "${${PROJECT_NAME}_VERSION_MAJOR}.${${PROJECT_NAME}_VERSION_MINOR}.${${PROJECT_NAME}_VERSION_PATCH}")

  # Set SOVERSION based on major and minor
  set(${PROJECT_NAME}_SOVERSION
    "${${PROJECT_NAME}_VERSION_MAJOR}.${${PROJECT_NAME}_VERSION_MINOR}")

  # Set ABI version string used to name binary output and, by SOCI loader, to find binaries.
  # On Windows, ABI version is specified using binary file name suffix.
  # On Unix, suffix ix empty and SOVERSION is used instead.
  if (UNIX)
    set(${PROJECT_NAME}_ABI_VERSION ${${PROJECT_NAME}_SOVERSION})
  elseif(WIN32)
    set(${PROJECT_NAME}_ABI_VERSION
      "${${PROJECT_NAME}_VERSION_MAJOR}_${${PROJECT_NAME}_VERSION_MINOR}")
  else()
    message(FATAL_ERROR "Ambiguous target platform with unknown ABI version scheme. Giving up.")
  endif()

  add_definitions(-DCalcComponent_ABI_VERSION="${${PROJECT_NAME}_ABI_VERSION}")

endmacro()

function(calc_target_output_name TARGET_NAME OUTPUT_NAME)
  if(NOT DEFINED TARGET_NAME)
    message(SEND_ERROR "Error, the variable TARGET_NAME is not defined!")
  endif()

  if(NOT DEFINED ${PROJECT_NAME}_VERSION)
    message(SEND_ERROR "Error, the variable ${${PROJECT_NAME}_VERSION} is not defined!")
  endif()

  # On Windows, ABI version is specified using binary file name suffix.
  # On Unix, suffix is empty and SOVERSION is used instead.
  if (WIN32)
    string(LENGTH "${${PROJECT_NAME}_ABI_VERSION}" abilen)
    if(abilen GREATER 0)
      set(SUFFIX "_${${PROJECT_NAME}_ABI_VERSION}")
    endif()
  endif()

  set(${OUTPUT_NAME} ${TARGET_NAME}${SUFFIX} PARENT_SCOPE)
endfunction()

