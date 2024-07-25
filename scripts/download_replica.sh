#!/bin/bash

ShellScriptFolder=$(cd $(dirname "$0"); pwd)
WorkspaceFolder=$(cd $ShellScriptFolder/..; pwd)

mkdir -p $WorkspaceFolder/data
cd $WorkspaceFolder/data

wget -cv https://cvg-data.inf.ethz.ch/nice-slam/data/Replica.zip

unzip Replica.zip

cd $WorkspaceFolder/scripts