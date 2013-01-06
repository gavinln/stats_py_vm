stats_py_vm
===========

<table>
    <tr>
        <td>Info</td>
        <td>See [Github][1] for the latest source</td>
    </tr>
    <tr>
        <td>Author</td>
        <td>Gavin Noronha - gavinln@hotmail.com</td>
    </tr>
</table>

[1]: https://github.com/gavinln/stats_py_vm.git

About
-----

This project provides a [Ubuntu 12][2] [Vagrant][3] Virtual Machine (VM) with numerical and
scientific libraries for Python. It includes::

    * [Numpy][4]
    * [Scipy][5]
    * [Matplotlib][6]
    * [IPython-console][7]
    * [IPython-notebook][8]
    * [Sympy][9]
    * [Pandas][10]
    * [Statsmodels][11]


There are [Puppet][12] scripts that automatically install the software when the VM is started.

[2]: http://releases.ubuntu.com/precise/
[3]: http://www.vagrantup.com/
[4]: http://www.numpy.org/
[5]: http://www.scipy.org/
[6]: http://matplotlib.org/
[7]: http://ipython.org/
[8]: http://ipython.org/ipython-doc/dev/interactive/htmlnotebook.html
[9]: http://sympy.org/en/index.html
[10]: http://pandas.pydata.org/
[11]: http://statsmodels.sourceforge.net/
[12]: http://puppetlabs.com/

Running
-------

1. To start the virtual machine(VM) type:

    vagrant up

2. Connect to the VM:

    ```dos
    REM on windows
    vm\ssh_vagrant.bat
    REM If Python is installed
    python vm\ssh_vagrant.py
    ```
  
    ```bash
    # on unix
    vagrant ssh
    ```

3. Start the notebook:

    /vagrant/vm/ipython_notebook.sh

4. Open the notebook in the browser at::

    http://localhost:8888/

Requirements
------------

The following software is needed to get the software from github and run
Vagrant to set up the Python development environment. The Git environment
also provides an [SSH  client][13] for Windows.

* [Oracle VM VirtualBox][14]
* [Vagrant][15]
* [Git][16]

[13]: http://en.wikipedia.org/wiki/Secure_Shell
[14]: https://www.virtualbox.org/
[15]: http://vagrantup.com/
[16]: http://git-scm.com/  

Credits
-------

Thanks to (in no particular order):

* Glen Noronha

