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
* [Scikit learn][80]

[40]: http://www.numpy.org/
[50]: http://www.scipy.org/
[60]: http://jupyter.org/
[70]: http://pandas.pydata.org/
[80]: http://scikit-learn.org/stable/

### Visualization libraries

* [Matplotlib][90]
* [Seaborn][100]
* [Bokeh][110]
* ggplot - does not work yet

[90]: http://matplotlib.org/
[100]: http://stanford.edu/~mwaskom/software/seaborn/
[110]: http://bokeh.pydata.org/en/latest/

There are [Ansible][160] scripts that automatically install the software when the VM is started.

[160]: https://www.ansible.com/

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

```bash
/vagrant/vm/jupyter_notebook.sh
```

4. Open the notebook in the browser at the URL.

```
http://localhost:8888/
```

## Learning scientific programming with Jupyter notebooks

[Robert Johansson][170] has multiple [notebooks][180] organized as a series of
lectures.

[170]: http://jrjohansson.github.io/
[180]: https://github.com/jrjohansson/scientific-python-lectures

1. Change to the notebooks directory
```
cd /vagrant/notebooks
```

2. Get the notebooks
```
git clone https://github.com/jrjohansson/scientific-python-lectures
```

## Bokeh notebooks

1. Change to the notebooks directory
```
cd /vagrant/notebooks
```

2. Get the notebooks 
```
git clone https://github.com/bokeh/bokeh-notebooks
```

## Scikit-learn notebooks

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

## Other Scikit resources

https://github.com/amueller/scipy_2015_sklearn_tutorial/tree/master/notebooks
https://github.com/ogrisel/parallel_ml_tutorial

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
