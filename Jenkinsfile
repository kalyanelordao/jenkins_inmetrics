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
                "wget https://github.com/mozilla/geckodriver/releases/download/v0.24.0/geckodriver-v0.24.0-linux64.tar.gz`
                tar -zxvf geckodriver-v0.24.0-linux64.tar.gz
                sudo mv geckodriver /usr/local/bin/"
            }
        }
        stage("Tests") {
            steps {
                sh "bundle exec cucumber -p ci"
            }
        }
    }

}
