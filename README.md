stats_py_vm
===========

* Source code - [Github][1]
* Author - Gavin Noronha - <gavinln@hotmail.com>

[1]: https://github.com/gavinln/stats_py_vm.git

About
-----

This project provides a [Ubuntu (14.04)][2] [Vagrant][3] Virtual Machine (VM) with numerical and
scientific libraries for Python. It includes the following libraries.

* [Numpy][4]
* [Scipy][5]
* [Matplotlib][6]
* [IPython-console][7]
* [IPython-notebook][8]
* [Sympy][9]
* [Pandas][10]
* [Statsmodels][11]
* [Scikit learn][12]


There are [Puppet][13] scripts that automatically install the software when the VM is started.

[2]: http://releases.ubuntu.com/14.04/
[3]: http://www.vagrantup.com/
[4]: http://www.numpy.org/
[5]: http://www.scipy.org/
[6]: http://matplotlib.org/
[7]: http://ipython.org/
[8]: http://ipython.org/ipython-doc/dev/interactive/htmlnotebook.html
[9]: http://sympy.org/en/index.html
[10]: http://pandas.pydata.org/
[11]: http://statsmodels.sourceforge.net/
[12]: http://scikit-learn.org/stable/
[13]: http://puppetlabs.com/

Running
-------

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
    /vagrant/vm/ipython_notebook.sh
    ```

4. Open the notebook in the browser at the URL.

    ```
    http://localhost:8888/
    ```

Requirements
------------

The following software is needed to get the software from github and run
Vagrant to set up the Python development environment. The Git environment
also provides an [SSH  client][14] for Windows.

* [Oracle VM VirtualBox][15]
* [Vagrant][16]
* [Git][17]

[14]: http://en.wikipedia.org/wiki/Secure_Shell
[15]: https://www.virtualbox.org/
[16]: http://vagrantup.com/
[17]: http://git-scm.com/

Credits
-------

Thanks to (in no particular order):

* Glen Noronha

