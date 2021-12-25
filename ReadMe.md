# FastMRI Visualization

A project for working with FastMRI database. The goal is to implement an opensouce, fast, c++ based visualization and training toolkit for FastMRI database. The backend used in this project is libTroch.

## Installation

1. Download and install libtorch on your machine, specify the respective path to its cmake folder in the CMakeLists.txt file inside the lib directory.
2. We use conan for easier dependency management.

```console
  $ cd conan
  $ conan install .. --profile=profile_linux --build=missing
```

## CUDA and Deeplearning

Install CUDA SDK toolkit on your machine:

1. Install CuDNN Runtime and Development headers and libraries.
2. Download and install libtorch on your machine, specify the respective path to its cmake folder in the CMakeLists.txt file inside the lib directory.
3. We use conan for easier dependency management.

## Maintainer

Amir Nourinia: [email](mailto:amir.nourinia@gmail.com)

## Libraries and Dependencies

1. Boost
2. Catch2
3. Eigen
4. Gtk/Gtkmm4


## License

MIT based.