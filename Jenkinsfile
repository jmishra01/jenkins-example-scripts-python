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
                sh 'docker run -d --rm  -cpus 1 --memory "500mb" --name rust-poc -p 5051:5051 rust-project'
            }
        }
    }
}
