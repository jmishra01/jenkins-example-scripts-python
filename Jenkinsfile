pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'docker build -t jenpy .'
      }
    }
    stage('run-container') {
      steps {
        sh 'docker run -d -p 5050:5050 jenpy'
      }
    }
  }
}
