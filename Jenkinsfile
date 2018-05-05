pipeline {
 agent any
 stages {
  
   stage('Unit Test') { 
     steps {
       echo "Unit Test..."
       sh 'mvn clean test'
     }
  }
    
  stage('Deploy Standalone') { 
     steps {
      echo "Deploy Standalone..."
      sh 'mvn deploy -P standalone'
      }
   }
   
  }//stages
 
 
} 
