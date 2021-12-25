# SRC

include(../CMake/Torch.cmake)
include(../CMake/windows_fix.cmake)

set(EXECUTABLE_NAME main)
add_executable(${EXECUTABLE_NAME} main.cpp)
target_link_libraries(${EXECUTABLE_NAME} ${TORCH_LIBRARIES} ${CONAN_LIBS})

# # Fix dll loading in windows
# include(windows_fix.cmake)