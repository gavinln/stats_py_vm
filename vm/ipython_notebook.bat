REM start the ipython notebook server

set ROOT_DIR=%~dp0..
set PYTHONPATH=%ROOT_DIR%\python;%PYTHONPATH%

set EDITOR=gvim.exe

ipython notebook --port=8888 --ip=0.0.0.0 --no-browser --pylab=inline --notebook-dir=%ROOT_DIR%\notebooks --profile sympy --ConsoleWidget.editor=%EDITOR%

