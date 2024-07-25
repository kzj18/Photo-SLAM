#!/bin/bash

ShellScriptFolder=$(cd $(dirname "$0"); pwd)
WorkspaceFolder=$(cd $ShellScriptFolder/..; pwd)

for i in 0 1 2 3 4
do
$WorkspaceFolder/bin/replica_rgbd \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/RGB-D/Replica/office0.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/RGB-D/Replica/replica_rgbd.yaml \
    $WorkspaceFolder/data/Replica/office0 \
    $WorkspaceFolder/results/replica_rgbd_$i/office0 \
    # no_viewer

$WorkspaceFolder/bin/replica_rgbd \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/RGB-D/Replica/office1.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/RGB-D/Replica/replica_rgbd.yaml \
    $WorkspaceFolder/data/Replica/office1 \
    $WorkspaceFolder/results/replica_rgbd_$i/office1 \
    # no_viewer

$WorkspaceFolder/bin/replica_rgbd \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/RGB-D/Replica/office2.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/RGB-D/Replica/replica_rgbd.yaml \
    $WorkspaceFolder/data/Replica/office2 \
    $WorkspaceFolder/results/replica_rgbd_$i/office2 \
    # no_viewer

$WorkspaceFolder/bin/replica_rgbd \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/RGB-D/Replica/office3.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/RGB-D/Replica/replica_rgbd.yaml \
    $WorkspaceFolder/data/Replica/office3 \
    $WorkspaceFolder/results/replica_rgbd_$i/office3 \
    # no_viewer

$WorkspaceFolder/bin/replica_rgbd \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/RGB-D/Replica/office4.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/RGB-D/Replica/replica_rgbd.yaml \
    $WorkspaceFolder/data/Replica/office4 \
    $WorkspaceFolder/results/replica_rgbd_$i/office4 \
    # no_viewer

$WorkspaceFolder/bin/replica_rgbd \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/RGB-D/Replica/room0.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/RGB-D/Replica/replica_rgbd.yaml \
    $WorkspaceFolder/data/Replica/room0 \
    $WorkspaceFolder/results/replica_rgbd_$i/room0 \
    # no_viewer

$WorkspaceFolder/bin/replica_rgbd \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/RGB-D/Replica/room1.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/RGB-D/Replica/replica_rgbd.yaml \
    $WorkspaceFolder/data/Replica/room1 \
    $WorkspaceFolder/results/replica_rgbd_$i/room1 \
    # no_viewer

$WorkspaceFolder/bin/replica_rgbd \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/RGB-D/Replica/room2.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/RGB-D/Replica/replica_rgbd.yaml \
    $WorkspaceFolder/data/Replica/room2 \
    $WorkspaceFolder/results/replica_rgbd_$i/room2 \
    # no_viewer
done