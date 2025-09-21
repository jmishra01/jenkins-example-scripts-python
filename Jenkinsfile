pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'docker build -t jenpy .'
      }
    }

    stage('remove-old') {
      steps {
        sh 'docker container stop jenpy'
      }
      steps {
        sh 'docker container rm jenpy'
      }
    }
    stage('run-container') {
      steps {
        sh 'docker run -d -p 5050:5050 jenpy'
      }
    }
  }
}
