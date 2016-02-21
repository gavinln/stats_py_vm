from bokeh.plotting import figure
from bokeh.plotting import curdoc, vplot

p = figure(title="Server Plot")
p.circle([1, 2, 3], [4, 5, 6])

curdoc().add_root(p)
