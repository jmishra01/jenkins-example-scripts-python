pipeline {
  agent any
  stages {
    stage('docker-version') {
      steps {
        docker version
      }
    }
    stage('build') {
      steps {
        docker build -t jenpy .
      }
    }
    stage('run-container') {
      steps {
        docker run --rm jenpy
      }
    }
  }
}
