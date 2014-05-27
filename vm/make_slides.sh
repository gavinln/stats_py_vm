#!/bin/bash

ROOT_DIR=/vagrant
#export PYTHONPATH=$ROOT_DIR/python

IPYTHON_CMD="ipython nbconvert"
BASIC_NOTEBOOKS=$ROOT_DIR/notebooks

#$IPYTHON_CMD $BASIC_NOTEBOOKS/SQL_database.ipynb --to slides
#$IPYTHON_CMD $BASIC_NOTEBOOKS/SQL_pyodbc.ipynb --to slides
$IPYTHON_CMD $BASIC_NOTEBOOKS/Responsive_design.ipynb --to slides
