REM start the ipython notebook server

set ROOT_DIR=%~dp0..
set PYTHONPATH=%ROOT_DIR%\python;%PYTHONPATH%

set EDITOR=gvim.exe

ipython notebook --port=8888 --ip=0.0.0.0 --no-browser --notebook-dir=%ROOT_DIR%\notebooks --ConsoleWidget.editor=%EDITOR%

