pipeline {
    agent any
    stages {
        stage("Build") {
            steps {
                sh 'docker build -t rust-project .'
            }
        }
        stage ("Run") {
            steps {
                sh 'docker run --rm --name rust-poc rust-project'
            }
        }
    }
}
