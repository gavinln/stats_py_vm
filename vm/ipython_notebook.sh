#!/bin/bash

ROOT_DIR=/vagrant
source ~/unix/bin/activate
export PYTHONPATH=$ROOT_DIR/python
ipython notebook --port=8888 --ip=0.0.0.0 --no-browser --pylab=inline --notebook-dir=$ROOT_DIR/notebooks
deactivate

