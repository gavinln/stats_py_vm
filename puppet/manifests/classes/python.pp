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
            package { 'pandas':
                ensure => installed,
                provider => pip,
                require => Package['virtualenv']
            }
            package { 'statsmodels':
                ensure => '0.4.0', # latest version does not install correctly
                provider => pip,
                require => Package['pandas']
            }
            package { 'vincent':
                ensure => installed,
                provider => pip,
                require => Package['pandas']
            }
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
