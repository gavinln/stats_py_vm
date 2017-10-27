# stats_py_vm

* Source code - [Github][10]
* Author - Gavin Noronha - <gavinln@hotmail.com>

[1]: https://github.com/gavinln/stats_py_vm.git

## About

This project provides a [Ubuntu (16.04)][20] [Vagrant][30] Virtual Machine
(VM) with numerical and scientific libraries for Python. It includes the
following libraries. It also contains Jupyter (formerly known as IPython)
notebooks.

[20]: https://wiki.ubuntu.com/Releases
[30]: http://www.vagrantup.com/

* [Numpy][40]
* [Scipy][50]
* [Jupyter notebook][60]
* [Pandas][70]

[40]: http://www.numpy.org/
[50]: http://www.scipy.org/
[60]: http://jupyter.org/
[70]: http://pandas.pydata.org/

### Visualization libraries

* [Matplotlib][80]
* [Seaborn][90]
* [Bokeh][100]
* [Holoviews][110]

[80]: http://matplotlib.org/
[90]: http://stanford.edu/~mwaskom/software/seaborn/
[100]: http://bokeh.pydata.org/en/latest/
[110]: https://www.youtube.com/watch?v=cMXKE0nB8k4

There are [Ansible][120] scripts that automatically install the software when the VM is started.

[120]: https://www.ansible.com/

## Running

1. To start the virtual machine(VM) type

```
vagrant up
```

2. Connect to the VM

```
vagrant ssh
```

3. Start the notebook

```
/vagrant/vm/jupyter_notebook.sh
```

4. Open the notebook in the browser at the URL.

```
http://localhost:8888/
```

## Learning scientific programming with Jupyter notebooks

[Robert Johansson][120] has multiple [notebooks][130] organized as a series of
lectures.

[120]: http://jrjohansson.github.io/
[130]: https://github.com/jrjohansson/scientific-python-lectures

1. Change to the notebooks directory

```
cd /vagrant/notebooks
```

2. Get the notebooks

```
git clone https://github.com/jrjohansson/scientific-python-lectures
```

## Machine learning notebooks

### Titanic notebooks

1. Change to the notebooks directory

    ```
    cd /vagrant/notebooks/titanic
    ```

2. Get the notebooks

    ```
    curl -O https://gist.githubusercontent.com/mwaskom/8224591/raw/41ef1127b03c62798890d8a362d3c4dd7e2a5ac8/titanic_seaborn.ipynb
    ```

3. Install Slideshow

    ```
    sudo pip install RISE
    sudo jupyter-nbextension install rise --py --sys-prefix
    sudo jupyter-nbextension enable rise --py --sys-prefix
    ```

4. Titanic prediction

```
http://ahmedbesbes.com/how-to-score-08134-in-titanic-kaggle-challenge.html
https://blog.socialcops.com/engineering/machine-learning-python/
```

5. Titanic data description

```
https://www.kaggle.com/c/titanic/data
```

### Scikit-learn notebooks

To get the Scikit learn [notebooks][170] from [PyCon 2015][180]. The video for
this conference is on [Youtube][190]


[170]: https://github.com/jakevdp/sklearn_pycon2015
[180]: https://us.pycon.org/2015/
[190]: https://www.youtube.com/watch?v=L7R4HUQ-eQ0

1. Change to the notebooks directory

```
cd /vagrant/notebooks
```

2. Get the notebooks into the directory pycon2015

```
svn export http://github.com/jakevdp/sklearn_pycon2015/trunk/notebooks pycon2015
```

3. In your Jupyter notebook list at http://localhost:8888/ the notebooks will
   be in the pycon2015 directory.

### Other Scikit resources

https://github.com/amueller/scipy_2015_sklearn_tutorial/tree/master/notebooks
https://github.com/ogrisel/parallel_ml_tutorial

## Ploting notebooks

### Bokeh notebooks

1. Change to the notebooks directory
```
cd /vagrant/notebooks
```

2. Get the notebooks
```
git clone https://github.com/bokeh/bokeh-notebooks
```

### Bqplot notebooks

1. Change to the notebooks directory
```
cd /vagrant/notebooks
```

2. Get the notebooks
```
git clone https://github.com/bloomberg/bqplot.git
```

### Holoviews notebooks

1. Change to the notebooks directory
```
cd /vagrant/notebooks
```

2. Get the notebooks
```
git clone https://github.com/ioam/scipy-2017-holoviews-tutorial.git
```

3. Get the data
```
curl http://s3.amazonaws.com/datashader-data/nyc_taxi.zip
```

## Requirements

The following software is needed to get the software from github and run
Vagrant to set up the Python development environment. The Git environment
also provides an [SSH  client][200] for Windows.

* [Oracle VM VirtualBox][210]
* [Vagrant][220]
* [Git][230]

[200]: http://en.wikipedia.org/wiki/Secure_Shell
[210]: https://www.virtualbox.org/
[220]: http://vagrantup.com/
[230]: http://git-scm.com/
