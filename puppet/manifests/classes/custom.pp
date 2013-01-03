# You can add custom puppet manifests for your app here.
class custom {
    $jenkins_server = 'http://localhost:8080/'
    $jenkins_dir = "$PROJ_DIR/jenkins"
    $jenkins_jar = "$PROJ_DIR/jenkins/jenkins-cli.jar"
    exec { "wait_for_jenkins":
        command => "sleep 5", # need to wait for jenkins to start
        require => Service["jenkins"]
    }
    # creates a job only if it does not exist
    exec { "jenkins_create_job":
        command => "java -jar $jenkins_jar -s $jenkins_server create-job days_in_month < $jenkins_dir/config_days_in_month.xml",
        unless => "java -jar $jenkins_jar -s $jenkins_server get-job days_in_month > /dev/null 2>&1",
        require => Exec["wait_for_jenkins"],
    }
    # need to add code to create directory /home/vagrant/fngn_us
}
