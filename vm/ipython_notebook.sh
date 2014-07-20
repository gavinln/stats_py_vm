#!/bin/bash

ROOT_DIR=/vagrant
export PYTHONPATH=$ROOT_DIR/python:/vagrant/vincent

IPYTHON_CMD="ipython notebook --port=8888 --ip=0.0.0.0 --no-browser"

BASIC_NOTEBOOKS=$ROOT_DIR/notebooks
VINCENT_NOTEBOOKS=$ROOT_DIR/vincent/examples

$IPYTHON_CMD --notebook-dir=$BASIC_NOTEBOOKS

