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
                provider => pip,
                ensure => latest,
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
            package { 'pathlib2':
                ensure => installed,
                provider => pip,
                require => Package['pip']
            }
#            package { 'sympy':
#                ensure => installed,
#                provider => pip,
#                require => Package['pip']
#            }
#            package { 'bokeh':
#                ensure => installed,
#                provider => pip,
#                require => Package['numpy']
#            }
#            package { 'ipython':
#                ensure => '4.2.1',
#                provider => pip,
#                require => Package['pathlib2', 'jsonschema', 'terminado']
#            }
#            package { 'notebook':
#                ensure => '4.2.1',
#                provider => pip,
#                require => Package['ipython']
#            }
#            package { 'simplegeneric':
#                ensure => installed,
#                provider => pip,
#                require => Package['pip']
#            }
#            package {'graphviz':
#                ensure => installed
#            }
#            package { 'pydot-ng':
#                ensure => installed,
#                provider => pip,
#                require => Package['pip', 'graphviz']
#            }
#            package { 'jupyter':
#                ensure => installed,
#                provider => pip,
#                require => Package['simplegeneric']
#            }
#            package { 'theano':
#                provider => pip,
#                require => Package['pip', 'pydot-ng']
#            }
        }
    }
}
