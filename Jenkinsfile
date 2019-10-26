pipeline {
    agent {
        docker {
            image "ruby:alpine"
        }
    }
    stages {
        stage("Build") {
            steps {
                sh "chmod u+x build/alpine.sh"
                sh "./build/alpine.sh"
                sh "bundle install"
                sh "mv geckodriver /usr/local/bin/"
            }
        }
        stage("Tests") {
            steps {
                sh "bundle exec cucumber -p ci"
            }
        }
    }

}
