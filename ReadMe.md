0. Install CUDA SDK toolkit on your machine
1. Install CuDNN Runtime and Development headers and libraries.
2. Download and install libtorch on your machine, specify the respective path to its cmake folder in the CMakeLists.txt file inside the lib directory.
3. We use conan for easier dependency management.
conan install .. --build=missing
4. Conan default profile used in Linux:
[settings]
os=Linux
os_build=Linux
arch=x86_64
arch_build=x86_64
compiler=gcc
compiler.version=9
compiler.libcxx=libstdc++11
compiler.cppstd=20
build_type=Release
[options]
[build_requires]
[env]
