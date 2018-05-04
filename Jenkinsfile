pipeline {
  agent any
  stages {
  
    stage('Unit Test') { 
      steps {
        cmd 'mvn clean test'
      }
    }
    
    stage('Deploy Standalone') { 
      steps {
        cmd 'mvn deploy -P standalone'
      }
    }
    
  }//stages
  
  
}