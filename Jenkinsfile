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
        sh 'docker run -d --cpus 1 --memory "500mb" -p 5050:5050 jenpy'
      }
    }
  
}
}
