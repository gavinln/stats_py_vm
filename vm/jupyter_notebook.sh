#!/bin/bash

# jupyter notebook --port 8888 --ip=0.0.0.0 --no-browser --notebook-dir=/vagrant/notebooks

ROOT_DIR=/vagrant
export PYTHONPATH=$ROOT_DIR/python

JUPYTER_CMD="jupyter notebook --port=8888 --ip=0.0.0.0 --no-browser"

BASIC_NOTEBOOKS=$ROOT_DIR/notebooks

$JUPYTER_CMD --notebook-dir=$BASIC_NOTEBOOKS
