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
        sh 'docker run -d -p 5000:5000 jenpy'
      }
    }
  }
}
