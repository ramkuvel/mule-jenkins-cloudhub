pipeline {
  agent any
  stages {
    
    stage('Deploy Standalone') { 
      steps {
        sh 'mvn deploy -P standalone -Dmule.home=/opt/mule/'
      }
    }
    
  }//stages
  
  
}
