#  Set the path for libtorch
if (WIN32)
    # set(TORCH_LIBRARY_CMAKE "C:\\Local\\Library\\libtorch-win-shared-with-deps-debug-1.9.1+cu111\\share\\cmake")
    set(TORCH_LIBRARY_CMAKE "C:\\Local\\Library\\libtorch-win-shared-with-deps-1.9.1+cu111\\share\\cmake")
endif (WIN32)

if (UNIX)
    set(TORCH_LIBRARY_CMAKE "/home/amir/Library/libtorch-cxx11-abi-shared-with-deps-1.9.1+cu111/share/cmake")
    # set(TORCH_LIBRARY_CMAKE "/home/amir/Library/libtorch-shared-with-deps-1.9.1+cu111/share/cmake")
endif (UNIX)

find_package(Torch 
                    REQUIRED
                    PATHS ${TORCH_LIBRARY_CMAKE}
)
include_directories(${TORCH_INCLUDE_DIRS})

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${TORCH_CXX_FLAGS}")



# get_cmake_property(_variableNames VARIABLES)
# list (SORT _variableNames)
# foreach (_variableName ${_variableNames})
#     message(STATUS "${_variableName}=${${_variableName}}")
# endforeach()