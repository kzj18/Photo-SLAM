#!/bin/bash

ShellScriptFolder=$(cd $(dirname "$0"); pwd)
WorkspaceFolder=$(cd $ShellScriptFolder/..; pwd)

for i in 0 1 2 3 4
do
$WorkspaceFolder/bin/tum_mono \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/Monocular/TUM/tum_freiburg1_desk.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/Monocular/TUM/tum_mono.yaml \
    $WorkspaceFolder/data/TUM/rgbd_dataset_freiburg1_desk \
    $WorkspaceFolder/results/tum_mono_$i/rgbd_dataset_freiburg1_desk \
    # no_viewer

$WorkspaceFolder/bin/tum_mono \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/Monocular/TUM/tum_freiburg2_xyz.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/Monocular/TUM/tum_mono.yaml \
    $WorkspaceFolder/data/TUM/rgbd_dataset_freiburg2_xyz \
    $WorkspaceFolder/results/tum_mono_$i/rgbd_dataset_freiburg2_xyz \
    # no_viewer

$WorkspaceFolder/bin/tum_mono \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/Monocular/TUM/tum_freiburg3_long_office_household.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/Monocular/TUM/tum_mono.yaml \
    $WorkspaceFolder/data/TUM/rgbd_dataset_freiburg3_long_office_household \
    $WorkspaceFolder/results/tum_mono_$i/rgbd_dataset_freiburg3_long_office_household \
    # no_viewer
done