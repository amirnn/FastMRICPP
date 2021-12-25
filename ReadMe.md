# FastMRI Visualization

A project for working with FastMRI database. The goal is to implement an opensouce, fast, c++ based visualization and training toolkit for FastMRI database. The backend used in this project is libTroch.

## Installation

1. Download and install libtorch on your machine, specify the respective path to its cmake folder in the CMakeLists.txt file inside the lib directory.
2. We use conan for easier dependency management.

```console
  $ cd conan
  $ conan install . --profile=profile_linux --build=missing
```

## CUDA and Deeplearning

Install CUDA SDK toolkit on your machine:

1. Install CuDNN Runtime and Development headers and libraries.
2. Download and install libtorch on your machine, specify the respective path to its cmake folder in the CMakeLists.txt file inside the lib directory.
3. We use conan for easier dependency management.

## Maintainer

Amir Nourinia: [email](mailto:amir.nourinia@gmail.com)

## How to Files

The FastMRI database collects the .h5 files in tar.gz files. To be able to extract a file, one can simply list the files inside the archive and then extract the desired file. 

(In macos install gnu-tar and use gtar command instead.)

```console
$ tar -ztf brain_multicoil_train.tar.gz
$ tar --extract --occurrence=1 \
--file brain_multicoil_train.tar.gz \
--directory ~/Data/FastMRI \
multicoil_train/file_brain_AXFLAIR_200_6002425.h5

```

## Libraries and Dependencies

1. Boost
2. Catch2
3. Eigen
4. Gtk/Gtkmm4


## License

MIT based.
