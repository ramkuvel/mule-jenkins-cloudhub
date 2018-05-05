pipeline { 
    agent any  
    stages { 
	
	stage('Clean') { 
		steps { 
		   echo 'This is clean stage.' 
		   sh 'mvn test'
		}
   	}
	
	stage('BuildFile') { 
		steps { 
		   echo 'This is Build stage.' 
		   sh 'mvn clean test'
		}
	}
	stage('BuildFile 2') { 	
		steps { 
		   echo 'This is Build stage 2' 
		   stash name: "buildFile", includes: "Dockerfile, target/*.zip"
		   archive 'target/*.zip'
		}
	}
	stage('BuildFile 3') { 	
		steps { 
		    echo 'This is Build stage 3' 
		    unstash name: "buildFile"
		}
    	}	
	
	stage('Docker Deployment') {
		
		steps { 
		    echo 'This is docker Deployment stage'
		    sh "docker build -t mule-test ."
		}
	
	}
	
	stage('Docker Run') {
		
		steps {
		    echo 'This is Docker Run stage'
		    sh "docker run -d -p 8081:8081 mule-test"
		}
	
	}
  }
}
