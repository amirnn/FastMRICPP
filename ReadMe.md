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
2. Download and install libtorch on your machine, specify the respective path to its cmake folder in the CMakeLists.txt file inside the lib directory (i.e. $HOME/Library/libTorch/1.10.1/share/cmake/Torch). In macos because of rpath problems, one should add DYLD_FALLBACK_LIBRARY_PATH variable as an enviornemt variable. (TODO: RPATH needs fixing.)

```console
$ export DYLD_FALLBACK_LIBRARY_PATH="$HOME/Library/libTorch/1.10.1/lib:$DYLD_FALLBACK_LIBRARY_PATH"
```

## Data

After configureing and building one can copy data into a folder in the folder where binary file resides.

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

| Name | Licence |
| ----------- | ----------- |
| Boost | Boost Software License |
| Catch2 | Boost Software License |
| Eigen | Mozilla Public License 2.0 |
| wxWidgets | wxWindows Library Licence |
| Gtk/Gtkmm4 | LGPL |
| h5pp | MIT |

## Maintainer

AmirN: [email](mailto:thebluecpp@gmail.com)

## License

MIT
