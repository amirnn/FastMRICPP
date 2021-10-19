# Find the Libtorch
include(Torch.cmake)

include_directories(${TORCH_INCLUDE_DIRS})
set(EXECUTABLE_NAME main)
add_executable(${EXECUTABLE_NAME} main.cpp)
target_link_libraries(${EXECUTABLE_NAME} ${CONAN_LIBS} ${TORCH_LIBRARIES})