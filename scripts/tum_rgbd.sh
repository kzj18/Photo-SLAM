#!/bin/bash

ShellScriptFolder=$(cd $(dirname "$0"); pwd)
WorkspaceFolder=$(cd $ShellScriptFolder/..; pwd)

for i in 0 1 2 3 4
do
$WorkspaceFolder/bin/tum_rgbd \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/RGB-D/TUM/tum_freiburg1_desk.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/RGB-D/TUM/tum_rgbd.yaml \
    $WorkspaceFolder/data/TUM/rgbd_dataset_freiburg1_desk \
    $WorkspaceFolder/cfg/ORB_SLAM3/RGB-D/TUM/associations/tum_freiburg1_desk.txt \
    $WorkspaceFolder/results/tum_rgbd_$i/rgbd_dataset_freiburg1_desk \
    # no_viewer

$WorkspaceFolder/bin/tum_rgbd \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/RGB-D/TUM/tum_freiburg2_xyz.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/RGB-D/TUM/tum_rgbd.yaml \
    $WorkspaceFolder/data/TUM/rgbd_dataset_freiburg2_xyz \
    $WorkspaceFolder/cfg/ORB_SLAM3/RGB-D/TUM/associations/tum_freiburg2_xyz.txt \
    $WorkspaceFolder/results/tum_rgbd_$i/rgbd_dataset_freiburg2_xyz \
    # no_viewer

$WorkspaceFolder/bin/tum_rgbd \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/RGB-D/TUM/tum_freiburg3_long_office_household.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/RGB-D/TUM/tum_rgbd.yaml \
    $WorkspaceFolder/data/TUM/rgbd_dataset_freiburg3_long_office_household \
    $WorkspaceFolder/cfg/ORB_SLAM3/RGB-D/TUM/associations/tum_freiburg3_long_office_household.txt \
    $WorkspaceFolder/results/tum_rgbd_$i/rgbd_dataset_freiburg3_long_office_household \
    # no_viewer
done
