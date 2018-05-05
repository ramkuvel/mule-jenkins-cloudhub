pipeline {
 agent any
 stages {
  
   stage('Clean up') { 
     steps {
       echo "Unit Test..."
       sh 'mvn clean test'
     }
  }
  
  
  stage('Build Package') { 
     steps {
       echo "Package Test..."
       sh 'mvn package'
     }
  }
  
  stage('Docker Deployment') {
    steps { 
        sh 'pwd'
       echo 'This is docker Deployment stage'
        sh "docker image build -t mule-cicd ."
    }
  }
  
 stage('Docker Run') {
  steps {
       echo 'This is Docker Run stage'
       sh "docker run -d -p 8081:8081 mule-cicd"
   }
 }

   
  }//stages
 
 
} 
