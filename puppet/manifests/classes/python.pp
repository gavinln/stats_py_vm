# Install python and compiled modules for project
class python {
    case $operatingsystem {
        ubuntu: {
            package { "python-pip":
                ensure => installed
            }
            package { ["python-zmq", "python-matplotlib", "python-scipy"]:
                ensure => installed,
                require => Package['python-pip']
            }
            package { ["numpy"]:
                ensure => installed,
                provider => pip,
                require => Package['python-pip']
            }
            package { 'virtualenv':
                ensure => installed,
                provider => pip,
                require => Package['python-pip']
            }
            package { 'untangle':
                ensure => installed,
                provider => pip,
                require => Package['virtualenv']
            }
            package { 'pygments':
                ensure => installed,
                provider => pip,
                require => Package['virtualenv']
            }
            package { 'nose':
                ensure => installed,
                provider => pip,
                require => Package['virtualenv']
            }
            package { 'tornado':
                ensure => installed,
                provider => pip,
                require => Package['virtualenv']
            }
            package { 'jinja2':
                ensure => installed,
                provider => pip,
                require => Package['virtualenv']
            }
            package { 'sympy':
                ensure => installed,
                provider => pip,
                require => Package['virtualenv']
            }
            package { 'scikit-learn':
                provider => pip,
                require => Package['python-matplotlib']
            }
            package { 'python-pandas':
                ensure => installed,
                require => Package['python-pip']
            }
            #package { 'statsmodels':
                #ensure => '0.4.0', # latest version does not install correctly
                #provider => pip,
                #require => Package['pandas']
            #}
            #package { 'vincent':
                #ensure => installed,
                #provider => pip,
                #require => Package['pandas']
            #}
            package { 'ipython':
                ensure => installed,
                provider => pip,
                require => Package['virtualenv']
            }
            package { 'ipython-sql':
                ensure => installed,
                provider => pip,
                require => Package['ipython']
            }
        }
    }
}
