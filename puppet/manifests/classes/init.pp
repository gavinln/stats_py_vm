# stage {"pre": before => Stage["main"]} class {'apt': stage => 'pre'}

# Commands to run before all others in puppet.
class init {
    group { "puppet":
        ensure => "present",
    }
    case $operatingsystem {
        ubuntu: {
            exec { "update_apt":
                command => "sudo apt-get update",
            }
#sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade
#            exec { "upgrade_apt":
#                command => "sudo apt-get dist-upgrade -y",
#            }
            # Provides "add-apt-repository" command, useful if you need
            # to install software from other apt repositories.
            package { "python-software-properties":
                ensure => present,
                require => [
                    Exec['update_apt'],
                ];
            }
            $misc_packages = ["make", "curl", "git-core", "smbfs"]
            package { $misc_packages:
                ensure => present,
                require => [
                    Exec['update_apt'],
                ];
            }
        }
    }
}
