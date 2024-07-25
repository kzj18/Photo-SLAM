#!/bin/bash

set -x

ShellScriptFolder=$(cd $(dirname "$0"); pwd)
ORB_SLAM3_Dir=$ShellScriptFolder/ORB-SLAM3
DBoW2_Dir=$ORB_SLAM3_Dir/Thirdparty/DBoW2
g2o_Dir=$ORB_SLAM3_Dir/Thirdparty/g2o
Sophus_Dir=$ORB_SLAM3_Dir/Thirdparty/Sophus
OpenCV_Dir=$HOME/Installed/opencv-4.7.0/lib/cmake/opencv4
Torch_Dir=$HOME/Installed/libtorch/share/cmake/Torch

# DBoW2
mkdir $DBoW2_Dir/build
cd $DBoW2_Dir/build
cmake $DBoW2_Dir \
    -DCMAKE_BUILD_TYPE=Release \
    -DOpenCV_DIR=$OpenCV_Dir
make -j

# g2o
mkdir $g2o_Dir/build
cd $g2o_Dir/build
cmake $g2o_Dir -DCMAKE_BUILD_TYPE=Release
make -j

# Sophus
mkdir $Sophus_Dir/build
cd $Sophus_Dir/build
cmake $Sophus_Dir -DCMAKE_BUILD_TYPE=Release
make -j

# ORB_SLAM3

tar -xf $ORB_SLAM3_Dir/Vocabulary/ORBvoc.txt.tar.gz -C $ORB_SLAM3_Dir/Vocabulary

mkdir $ORB_SLAM3_Dir/build
cd $ORB_SLAM3_Dir/build
cmake $ORB_SLAM3_Dir \
    -DCMAKE_BUILD_TYPE=Release \
    -DOpenCV_DIR=$OpenCV_Dir
make -j

# Photo-SLAM
echo "Building Photo-SLAM ..."
mkdir $ShellScriptFolder/build
cd $ShellScriptFolder/build
cmake $ShellScriptFolder \
    -DTorch_DIR=$Torch_Dir \
    -DOpenCV_DIR=$OpenCV_Dir
make -j
