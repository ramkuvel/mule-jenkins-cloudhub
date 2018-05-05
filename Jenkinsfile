pipeline {
 agent any
 stages {
  
   stage('Unit Test') { 
     steps {
       echo "Unit Test..."
       sh 'mvn clean test'
     }
  }
  
  
  stage('Package Test') { 
     steps {
       echo "Package Test..."
       sh 'mvn package'
     }
  }

   
  }//stages
 
 
} 
