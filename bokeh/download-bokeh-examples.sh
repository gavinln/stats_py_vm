#!/bin/bash

URL=https://raw.githubusercontent.com/bokeh/bokeh/master/examples/app

curl -o examples/fourier_animated.py $URL/fourier_animated.py
curl -o examples/selection_histogram.py $URL/selection_histogram.py
curl -o examples/sliders.py $URL/sliders.py
curl -o examples/timeout.py $URL/timeout.py

PROJ_URL=https://github.com/bokeh/bokeh.git/trunk/examples/app

svn export --force $PROJ_URL/clustering examples/clustering
svn export --force $PROJ_URL/ohlc examples/ohlc
svn export --force $PROJ_URL/random_tiles examples/random_tiles
svn export --force $PROJ_URL/stocks examples/stocks  # run python download_sample_data.py to get data

# do not work
# svn export $PROJ_URL/crossfilter
# svn export $PROJ_URL/movies
# svn export $PROJ_URL/weather

