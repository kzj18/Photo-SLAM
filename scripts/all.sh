#!/bin/bash

ShellScriptFolder=$(cd $(dirname "$0"); pwd)

$ShellScriptFolder/replica_mono.sh
$ShellScriptFolder/replica_rgbd.sh

$ShellScriptFolder/tum_mono.sh
$ShellScriptFolder/tum_rgbd.sh

$ShellScriptFolder/euroc_stereo.sh
