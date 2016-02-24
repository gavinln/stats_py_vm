#!/bin/bash

bokeh serve $1

# bokeh serve --address 0.0.0.0 --host 192.168.0.143:5006 (client machine address)

# see http://nbviewer.jupyter.org/github/bokeh/bokeh-notebooks/blob/master/tutorial/A1%20-%20Building%20gapminder.ipynb
# see https://anaconda.org/bokeh/gapminder/notebook

echo Specify the command line like ./bokeh-serve.sh bokeh-example-server.py
