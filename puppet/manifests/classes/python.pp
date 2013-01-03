# Install python and compiled modules for project
class python {
    case $operatingsystem {
        ubuntu: {
            package {
                ["python-numpy", "python-scipy", "python-zmq"
                , "python-qt4", "python-matplotlib"
                , "libicu48", "python-pip"]:
                    ensure => installed;
            }
            package { 'virtualenv':
                ensure => installed,
                provider => pip,
                require => Package['python-pip']
            }
#            exec { "virtualenv-create":
#                command => "virtualenv --system-site-packages $HOME_DIR/unix",
#                cwd => "$PROJ_DIR",
#                creates => "$HOME_DIR/unix",
#                require => Package['virtualenv']
#            }
#            exec { "pip-install-compiled":
#                command => "$HOME_DIR/unix/bin/pip install -r $PROJ_DIR/puppet/requirements/compiled.txt",
#                require => Exec['virtualenv-create']
#            }
            package { ['nose', 'sphinx', 'tornado', 'ipython']:
                ensure => installed,
                provider => pip,
                require => Package['virtualenv']
            }
            exec { 'pandas':
                command => 'easy_install pandas',
                require => Package['python-pip', 'python-numpy']
            }
            exec { 'statsmodels':
                command => 'easy_install statsmodels',
                require => Exec['pandas']
            }
        }
    }
}
