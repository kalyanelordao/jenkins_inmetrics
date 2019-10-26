pipeline {
    agent {
        docker {
            image "ruby"
        }
    }
    stages {
        stage("Build") {
            steps {
                sh "RUN chmod +x build/alpine.sh"
                sh "./build/alpine.sh"
                sh "bundle install"
            }
        }
        stage("Tests") {
            steps {
                sh "bundle exec cucumber -p ci"
            }
        }
    }

}
