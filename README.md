# stats_py_vm

* Source code - [Github][10]
* Author - Gavin Noronha - <gavinln@hotmail.com>

[1]: https://github.com/gavinln/stats_py_vm.git

## About

This project provides a [Ubuntu (14.04)][20] [Vagrant][30] Virtual Machine (VM) with numerical and scientific libraries for Python. It includes the following libraries.

[20]: http://releases.ubuntu.com/14.04/
[30]: http://www.vagrantup.com/

* [Numpy][40]
* [Scipy][50]
* [IPython-console][70]
* [IPython-notebook][80]
* [Sympy][80]
* [Pandas][90]
* [Statsmodels][100]
* [Scikit learn][110]

[40]: http://www.numpy.org/
[50]: http://www.scipy.org/
[60]: http://ipython.org/
[70]: http://ipython.org/ipython-doc/dev/interactive/htmlnotebook.html
[80]: http://sympy.org/en/index.html
[90]: http://pandas.pydata.org/
[100]: http://statsmodels.sourceforge.net/
[110]: http://scikit-learn.org/stable/

### Visualization libraries

* [Matplotlib][120]
* [Seaborn][130]
* [Bokeh][140]
* ggplot - does not work yet

[120]: http://matplotlib.org/
[130]: http://stanford.edu/~mwaskom/software/seaborn/
[140]: http://bokeh.pydata.org/en/latest/

There are [Puppet][160] scripts that automatically install the software when the VM is started.

[160]: http://puppetlabs.com/

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

5. Open the **Index - Start Here** notebook  first

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

## Credits

* Glen Noronha
