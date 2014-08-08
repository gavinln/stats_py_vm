# Install python and compiled modules for project
class python {
    case $operatingsystem {
        ubuntu: {
            package { "python-pip":
                ensure => installed
            }
            package { ["python-zmq", "python-scipy"]:
                ensure => installed,
                require => Package['python-pip']
            }
            package { ["numpy"]:
                ensure => installed,
                provider => pip,
                require => Package['python-pip']
            }
            package { ['libfreetype6-dev', 'pkg-config']:
                ensure => installed
            }
            package { ['pyparsing']:
                ensure => installed,
                provider => pip,
                require => Package['python-pip']
            }
            package { ["matplotlib"]:
                ensure => installed,
                provider => pip,
                require => Package['numpy', 'pyparsing', 'libfreetype6-dev']
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
            package { 'yolk':
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
                require => Package['matplotlib']
            }
            package { 'pandas':
                ensure => installed,
                provider => pip,
                require => Package['numpy']
            }
            package { 'seaborn':
                ensure => installed,
                provider => pip,
                require => Package['matplotlib']
            }
            package { 'patsy':
                ensure => installed,
                provider => pip,
                require => Package['python-pip']
            }
            package { 'statsmodels':
                ensure => installed,
                provider => pip,
                require => Package['patsy', 'numpy', 'pandas', 'python-scipy']
            }
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
