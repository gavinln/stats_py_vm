# Install python and compiled modules for project
class python {
    case $operatingsystem {
        ubuntu: {
            package {
                ["python-numpy", "python-scipy", "python-zmq", 
                 "python-matplotlib", "libicu48", "python-pip"]:
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
            package { ['nose', 'tornado', 'ipython', 'jinja2']:
                ensure => installed,
                provider => pip,
                require => Package['virtualenv']
            }
            package { "sympy":
                ensure => installed,
                provider => pip,
                require => Package['virtualenv']
            }
            package { "pandas":
                ensure => installed,
                provider => pip,
                require => Package['virtualenv']
            }
            package { 'statsmodels':
                ensure => '0.4.0',
                provider => pip,
                require => Package['pandas']
            }
        }
    }
}
