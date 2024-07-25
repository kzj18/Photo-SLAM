#!/bin/bash

ShellScriptFolder=$(cd $(dirname "$0"); pwd)
WorkspaceFolder=$(cd $ShellScriptFolder/..; pwd)

mkdir -p $WorkspaceFolder/data/TUM
cd $WorkspaceFolder/data/TUM

wget -cv https://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_desk.tgz & wget -cv https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_xyz.tgz & wget -cv https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_long_office_household.tgz & wait

tar -xvzf rgbd_dataset_freiburg1_desk.tgz & tar -xvzf rgbd_dataset_freiburg2_xyz.tgz & tar -xvzf rgbd_dataset_freiburg3_long_office_household.tgz & wait

cd $WorkspaceFolder/scripts