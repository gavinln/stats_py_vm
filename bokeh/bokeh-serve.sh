#!/bin/bash

bokeh serve $1

# see http://nbviewer.jupyter.org/github/bokeh/bokeh-notebooks/blob/master/tutorial/A1%20-%20Building%20gapminder.ipynb
# see https://anaconda.org/bokeh/gapminder/notebook

echo Specify the command line like ./bokeh-serve.sh bokeh-example-server.py
echo need to tunnel localhost to the bokeh server
echo Open the browser to http://localhost:5006/bokeh-example-server
