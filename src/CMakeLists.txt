# SRC

include(../CMake/Torch.cmake)
include(../CMake/windows_fix.cmake)

set(EXECUTABLE_NAME torch_demo)
add_executable(${EXECUTABLE_NAME} torch_demo.cc)
target_link_libraries(${EXECUTABLE_NAME} ${TORCH_LIBRARIES} ${CONAN_LIBS})


set(EXECUTABLE_NAME wxGUI)
add_executable(${EXECUTABLE_NAME} wxgui.cc)
# target_link_libraries(${EXECUTABLE_NAME} ${TORCH_LIBRARIES} ${wxLIBS} ${CONAN_LIBS})
target_link_libraries(${EXECUTABLE_NAME} ${wxLIBS} ${CONAN_LIBS})

set(EXECUTABLE_NAME readH5)
add_executable(${EXECUTABLE_NAME} readH5.cc)
set_target_properties(${EXECUTABLE_NAME} PROPERTIES CXX_STANDARD 17)
# target_link_libraries(${EXECUTABLE_NAME} ${TORCH_LIBRARIES} ${wxLIBS} ${CONAN_LIBS})
target_link_libraries(${EXECUTABLE_NAME} ${wxLIBS} ${CONAN_LIBS})

# # Fix dll loading in windows
# include(windows_fix.cmake)