pipeline {
  agent any
  stages {
    
    stage('Deploy Standalone') { 
      steps {
        sh 'mvn deploy -P standalone -Dmule.home=D:/Vel/Apps/mule-standalone-4.1.1'
      }
    }
    
  }//stages
  
  
}
