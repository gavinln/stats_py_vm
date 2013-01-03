class apt {
    Package {
        require => Exec["apt-get_update"]
    }
    exec { "apt-get_update":
        command => "apt-get update",
        refreshonly => true,
    }
}
