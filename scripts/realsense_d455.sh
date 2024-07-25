#!/bin/bash

ShellScriptFolder=$(cd $(dirname "$0"); pwd)
WorkspaceFolder=$(cd $ShellScriptFolder/..; pwd)

$WorkspaceFolder/bin/realsense_rgbd \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/RGB-D/RealCamera/realsense_d455_rgbd.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/RGB-D/RealCamera/realsense_rgbd.yaml \
    $WorkspaceFolder/results/realsense_d455_rgbd