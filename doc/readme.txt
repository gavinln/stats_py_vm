This project demonstrates the following

1. Vagrant vm
2. Puppet to install all software
3. Virtualenv
4. Python
5. IPython
6. Web based notebook for IPython

1. To use this project in the root type
vagrant up

2. Connect to the VM
vm\ssh_vagrant.bat

4. Start the notebook
/vagrant/vm/ipython_notebook.sh

5. Open the notebook in the browser at
http://localhost:8888/

6. The notebooks are stored in
/vagrant/notebooks

# to install lightweight gui
sudo apt-get install xorg
sudo apt-get install openbox

ipython notebook --port=8888 --ip=0.0.0.0 --no-browser --pylab=inline

from IPython.zmq.pylab import backend_inline
cfg = backend_inline.InlineBackendConfig.instance()
cfg.figure_format = 'svg' # 'png' to switch back

