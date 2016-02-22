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
            package { "pip":
                ensure => "8.0.2",
                provider => pip,
                require => Package['python-pip']
            }
            package { "numpy":
                ensure => installed,
                provider => pip,
                require => Package['pip']
            }
            package { ['libfreetype6-dev', 'pkg-config']:
                ensure => installed
            }
            package { 'pyparsing':
                ensure => installed,
                provider => pip,
                require => Package['pip']
            }
            package { "matplotlib":
                ensure => installed,
                provider => pip,
                require => Package['numpy', 'pyparsing', 'libfreetype6-dev']
            }
            package { 'virtualenv':
                ensure => installed,
                provider => pip,
                require => Package['pip']
            }
            package { 'untangle':
                ensure => installed,
                provider => pip,
                require => Package['pip']
            }
            package { 'yolk':
                ensure => installed,
                provider => pip,
                require => Package['pip']
            }
            package { 'pygments':
                ensure => installed,
                provider => pip,
                require => Package['pip']
            }
            package { 'nose':
                ensure => installed,
                provider => pip,
                require => Package['pip']
            }
            package { 'tornado':
                ensure => installed,
                provider => pip,
                require => Package['pip']
            }
            package { 'jinja2':
                ensure => installed,
                provider => pip,
                require => Package['pip']
            }
            package { 'sympy':
                ensure => installed,
                provider => pip,
                require => Package['pip']
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
                require => Package['pip']
            }
            package { 'statsmodels':
                ensure => installed,
                provider => pip,
                require => Package['patsy', 'numpy', 'pandas', 'python-scipy']
            }
            package { 'bokeh':
                ensure => installed,
                provider => pip,
                require => Package['numpy']
            }
            package { 'jsonschema':
                ensure => installed,
                provider => pip,
                require => Package['pip']
            }
            package { 'terminado':
                ensure => installed,
                provider => pip,
                require => Package['pip']
            }
            package { 'ipython':
                ensure => '4.1.1',
                provider => pip,
                require => Package['pip', 'jsonschema', 'terminado']
            }
            package { 'jupyter':
                provider => pip,
                require => Package['pip']
            }
        }
    }
}
