#!/bin/bash

ShellScriptFolder=$(cd $(dirname "$0"); pwd)
WorkspaceFolder=$(cd $ShellScriptFolder/..; pwd)

mkdir -p $WorkspaceFolder/data/EuRoC
cd $WorkspaceFolder/data/EuRoC

wget -cv http://robotics.ethz.ch/~asl-datasets/ijrr_euroc_mav_dataset/machine_hall/MH_01_easy/MH_01_easy.zip & wget -cv http://robotics.ethz.ch/~asl-datasets/ijrr_euroc_mav_dataset/machine_hall/MH_02_easy/MH_02_easy.zip & wget -cv http://robotics.ethz.ch/~asl-datasets/ijrr_euroc_mav_dataset/vicon_room1/V1_01_easy/V1_01_easy.zip & wget -cv http://robotics.ethz.ch/~asl-datasets/ijrr_euroc_mav_dataset/vicon_room2/V2_01_easy/V2_01_easy.zip & wait

tar -xvzf MH_01_easy.zip & tar -xvzf MH_02_easy.zip & tar -xvzf V1_01_easy.zip & tar -xvzf V2_01_easy.zip & wait

cd $WorkspaceFolder/scripts