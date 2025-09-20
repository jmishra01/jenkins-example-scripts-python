pipeline {
  agent any
  stages {
    stage('docker-version') {
      steps {
        sh 'docker version'
      }
    }
    stage('build') {
      steps {
        sh 'docker build -t jenpy .'
      }
    }
    stage('run-container') {
      steps {
        sh 'docker run --rm jenpy'
      }
    }
  }
}
