''' This program connects to the vagrant virtual machine and should be 
run from the root directory of the project. It assumes that Git has been 
installed and uses the Git ssh executable to connect to the virtual machine
'''
import subprocess
import os
import _winreg
from collections import namedtuple

#reg query HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Git_is1 /v InstallLocation

def here():
    return os.path.abspath(os.path.dirname(__file__))

def call_command(command):
    process = subprocess.Popen(command,
                               stdout=subprocess.PIPE,
                               stderr=subprocess.PIPE)
    return process.communicate()

def call_command_shell(command):
    process = subprocess.Popen(command,
                               stdout=subprocess.PIPE,
                               stderr=subprocess.PIPE,
                               shell=True)
    return process.communicate()

def getGitDir():
    keyName = 'SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Git_is1'
    with _winreg.OpenKey(_winreg.HKEY_LOCAL_MACHINE, keyName) as key:
        value, valueType = _winreg.QueryValueEx(key, 'InstallLocation')
        return value
    return None

def getVagrantSSH():
    output, err = call_command_shell(['vagrant', 'ssh'])
    lines = err.split(os.linesep)
    paramNames = ['Host:', 'Port:', 'Username:', 'Private key:']
    paramValues = [None] * len(paramNames)
    for line in lines:
        for index, param in enumerate(paramNames):
            if line.startswith(param):
                paramValues[index] = line[len(param):].strip()
                break
    ParamSSH = namedtuple('ParamSSH', ['host', 'port', 'username', 'keyFile'])
    return ParamSSH._make(paramValues)

def getGitSsh(gitDir):
    return os.path.join(gitDir, 'bin', 'ssh.exe')

def main():
    gitDir = getGitDir()
    gitExe = getGitSsh(gitDir)
    paramSSH = getVagrantSSH()
    cmd = ['"%s"' % gitExe, '-p', paramSSH.port, '-i', paramSSH.keyFile, '-t',
           '%s@%s' % (paramSSH.username, paramSSH.host)]
    os.system(' '.join(cmd))

if __name__ == "__main__":
    main()


