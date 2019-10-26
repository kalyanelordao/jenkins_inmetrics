pipeline {
    agent {
        docker {
            image "ruby"
        }
    }
    stages {
        stage("Build") {
            steps {
                sh "bundler install"
            }
        }
        stage("Tests") {
            steps {
                sh "echo 'simulando um teste automatizado'"
            }
        }
    }

}
