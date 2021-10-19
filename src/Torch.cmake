#  Set the path for libtorch
if (MSVC)
    # set(TORCH_LIBRARY_CMAKE "/home/amir/Library/libtorch-cxx11-abi-shared-with-deps-1.9.1+cu111/share/cmake")
endif (MSVC)

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

# The following code block is suggested to be used on Windows.
# According to https://github.com/pytorch/pytorch/issues/25457,
# the DLLs need to be copied to avoid memory errors.
if (MSVC)
  file(GLOB TORCH_DLLS "${TORCH_INSTALL_PREFIX}/lib/*.dll")
  add_custom_command(TARGET example-app
                     POST_BUILD
                     COMMAND ${CMAKE_COMMAND} -E copy_if_different
                     ${TORCH_DLLS}
                     $<TARGET_FILE_DIR:example-app>)
endif (MSVC)

# get_cmake_property(_variableNames VARIABLES)
# list (SORT _variableNames)
# foreach (_variableName ${_variableNames})
#     message(STATUS "${_variableName}=${${_variableName}}")
# endforeach()