#!/bin/bash

ShellScriptFolder=$(cd $(dirname "$0"); pwd)
WorkspaceFolder=$(cd $ShellScriptFolder/..; pwd)

$WorkspaceFolder/bin/train_colmap \
    $WorkspaceFolder/cfg/colmap/gaussian_splatting.yaml \
    /home/rapidlab/programs/NeuralSLAM_ws/gaussian-splatting-materials/tandt_db/db/drjohnson \
    $WorkspaceFolder/results/colmap/drjohnson \
    # no_viewer