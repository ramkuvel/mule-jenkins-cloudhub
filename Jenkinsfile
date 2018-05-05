pipeline {
  agent any
  def mavenHome
  
  stages {
    
    stage('Build') { 
        echo "Build stage..."
        mavenHome = tool 'M3'
        sh "${mavenHome}/bin/mvn  clean package -Dmaven.test.skip=true -DskipMunitTests"
    }
    
    
    stage('Build File') {
         echo "Build File stage..."
        stash name: "build", includes: "build/*.zip"
        archive 'build/*.zip'
   }
    
    stage('Deployment') {
      echo "Deployment stage..."
   }
    
    
  }//stages
  
  
}
