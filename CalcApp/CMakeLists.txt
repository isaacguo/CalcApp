project(CalcApp CXX)
cmake_minimum_required(VERSION 2.6.2)

include_directories(
${CalcComponent_SOURCE_DIR}/include
)
link_directories(${CalcComponent_BINARY_DIR}/src)


add_executable(CalcApp src/CalcApp.cpp)
target_link_libraries(CalcApp CalcComponent)

install(TARGETS CalcApp DESTINATION bin)

