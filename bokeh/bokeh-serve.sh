#!/bin/bash

bokeh serve $1

echo Specify the command line like ./bokeh-serve.sh bokeh-example-server.py
echo need to tunnel localhost to the bokeh server
echo Open the browser to http://localhost:5006/bokeh-example-server
