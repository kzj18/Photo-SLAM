#!/bin/bash

ShellScriptFolder=$(cd $(dirname "$0"); pwd)
WorkspaceFolder=$(cd $ShellScriptFolder/..; pwd)

for i in 0 1 2 3 4
do
$WorkspaceFolder/bin/euroc_stereo \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/Stereo/EuRoC/EuRoC.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/Stereo/EuRoC/EuRoC.yaml \
    $WorkspaceFolder/data/EuRoC/MH_01_easy \
    $WorkspaceFolder/cfg/ORB_SLAM3/Stereo/EuRoC/EuRoC_TimeStamps/MH01.txt \
    $WorkspaceFolder/results/euroc_stereo_$i/MH_01_easy \
    # no_viewer

$WorkspaceFolder/bin/euroc_stereo \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/Stereo/EuRoC/EuRoC.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/Stereo/EuRoC/EuRoC.yaml \
    $WorkspaceFolder/data/EuRoC/MH_02_easy \
    $WorkspaceFolder/cfg/ORB_SLAM3/Stereo/EuRoC/EuRoC_TimeStamps/MH02.txt \
    $WorkspaceFolder/results/euroc_stereo_$i/MH_02_easy \
    # no_viewer

$WorkspaceFolder/bin/euroc_stereo \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/Stereo/EuRoC/EuRoC.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/Stereo/EuRoC/EuRoC.yaml \
    $WorkspaceFolder/data/EuRoC/V1_01_easy \
    $WorkspaceFolder/cfg/ORB_SLAM3/Stereo/EuRoC/EuRoC_TimeStamps/V101.txt \
    $WorkspaceFolder/results/euroc_stereo_$i/V1_01_easy \
    # no_viewer

$WorkspaceFolder/bin/euroc_stereo \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/Stereo/EuRoC/EuRoC.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/Stereo/EuRoC/EuRoC.yaml \
    $WorkspaceFolder/data/EuRoC/V2_01_easy \
    $WorkspaceFolder/cfg/ORB_SLAM3/Stereo/EuRoC/EuRoC_TimeStamps/V201.txt \
    $WorkspaceFolder/results/euroc_stereo_$i/V2_01_easy \
    # no_viewer
done