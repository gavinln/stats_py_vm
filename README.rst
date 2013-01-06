===========
stats_py_vm
===========

:Info: See `github <https://github.com/gavinln/stats_py_vm.git>`_ for the latest source.
:Author: Gavin Noronha <gavinln@hotmail.com>

About
=====

This project provides a `Ubuntu 12.04`_ `Vagrant`_ Virtual Machine (VM) with numerical and
scientific libraries for Python. It includes::

    #. `Numpy`_
    #. `Scipy`_
    #. `Matplotlib`_
    #. `IPython - console`_
    #. `IPython - notebook`_
    #. `Sympy`_
    #. `Pandas`_
    #. `Statsmodels`_

.. _Vagrant: http://www.vagrantup.com/
.. _Numpy: http://www.numpy.org/
.. _Scipy: http://www.scipy.org/
.. _Matplotlib: http://matplotlib.org/
.. _IPython - console: http://ipython.org/
.. _IPython - notebook: http://ipython.org/ipython-doc/dev/interactive/htmlnotebook.html
.. _Sympy: http://sympy.org/en/index.html
.. _Pandas: http://pandas.pydata.org/
.. _Statsmodels: http://statsmodels.sourceforge.net/

There are `Puppet <http://puppetlabs.com/>`_ scripts that automatically install
the software when the VM is started.

Running
=======

#. To start the virtual machine(VM) type::

    vagrant up

#. Connect to the VM::

    REM on windows
    vm\ssh_vagrant.bat
    or
    python vm\ssh_vagrant.py

    # on unix
    vagrant ssh

#. Start the notebook::

    /vagrant/vm/ipython_notebook.sh

#. Open the notebook in the browser at::

    http://localhost:8888/

Requirements
------------

The following software is needed to get the software from github and run
Vagrant to set up the Python development environment. The Git environment
also provides an `SSH <http://en.wikipedia.org/wiki/Secure_Shell>`_ client for Windows.

- `Oracle VM VirtualBox <https://www.virtualbox.org/>`_
- `Vagrant <http://vagrantup.com/>`_
- `Git <http://git-scm.com/>`_

Credits
=======

Thanks to (in no particular order):

- Glen Noronha

