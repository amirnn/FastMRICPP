# Top
cmake_minimum_required(VERSION 3.0.0)
project(FastMRICPP VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include(${CMAKE_SOURCE_DIR}/conan/conanbuildinfo.cmake)
conan_basic_setup()

include(CMake/GTKmm.cmake)
include(CMake/Torch.cmake)
include(CMake/windows_fix.cmake)

# include(CTest)
enable_testing()

include_directories(include)
add_subdirectory(src)
add_subdirectory(tests)


set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
