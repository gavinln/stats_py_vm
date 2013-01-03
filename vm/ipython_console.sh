#!/bin/bash

ROOT_DIR=/vagrant
source ~/unix/bin/activate
export PYTHONPATH=$ROOT_DIR/python
ipython console
deactivate

