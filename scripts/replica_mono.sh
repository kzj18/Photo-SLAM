#!/bin/bash

ShellScriptFolder=$(cd $(dirname "$0"); pwd)
WorkspaceFolder=$(cd $ShellScriptFolder/..; pwd)

for i in 0 1 2 3 4
do
$WorkspaceFolder/bin/replica_mono \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/Monocular/Replica/office0.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/Monocular/Replica/replica_mono.yaml \
    $WorkspaceFolder/data/Replica/office0 \
    $WorkspaceFolder/results/replica_mono_$i/office0 \
    # no_viewer

$WorkspaceFolder/bin/replica_mono \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/Monocular/Replica/office1.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/Monocular/Replica/replica_mono.yaml \
    $WorkspaceFolder/data/Replica/office1 \
    $WorkspaceFolder/results/replica_mono_$i/office1 \
    # no_viewer

$WorkspaceFolder/bin/replica_mono \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/Monocular/Replica/office2.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/Monocular/Replica/replica_mono.yaml \
    $WorkspaceFolder/data/Replica/office2 \
    $WorkspaceFolder/results/replica_mono_$i/office2 \
    # no_viewer

$WorkspaceFolder/bin/replica_mono \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/Monocular/Replica/office3.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/Monocular/Replica/replica_mono.yaml \
    $WorkspaceFolder/data/Replica/office3 \
    $WorkspaceFolder/results/replica_mono_$i/office3 \
    # no_viewer

$WorkspaceFolder/bin/replica_mono \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/Monocular/Replica/office4.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/Monocular/Replica/replica_mono.yaml \
    $WorkspaceFolder/data/Replica/office4 \
    $WorkspaceFolder/results/replica_mono_$i/office4 \
    # no_viewer

$WorkspaceFolder/bin/replica_mono \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/Monocular/Replica/room0.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/Monocular/Replica/replica_mono.yaml \
    $WorkspaceFolder/data/Replica/room0 \
    $WorkspaceFolder/results/replica_mono_$i/room0 \
    # no_viewer

$WorkspaceFolder/bin/replica_mono \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/Monocular/Replica/room1.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/Monocular/Replica/replica_mono.yaml \
    $WorkspaceFolder/data/Replica/room1 \
    $WorkspaceFolder/results/replica_mono_$i/room1 \
    # no_viewer

$WorkspaceFolder/bin/replica_mono \
    $WorkspaceFolder/ORB-SLAM3/Vocabulary/ORBvoc.txt \
    $WorkspaceFolder/cfg/ORB_SLAM3/Monocular/Replica/room2.yaml \
    $WorkspaceFolder/cfg/gaussian_mapper/Monocular/Replica/replica_mono.yaml \
    $WorkspaceFolder/data/Replica/room2 \
    $WorkspaceFolder/results/replica_mono_$i/room2 \
    # no_viewer
done