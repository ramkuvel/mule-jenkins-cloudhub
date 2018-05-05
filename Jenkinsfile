pipeline { 
    agent any  
    stages { 
	
	stage('Clean') { 
		steps { 
		   echo 'This is clean stage.' 
		   sh 'mvn clean test'
		}
   	}
	
	stage('BuildFile') { 
		steps { 
		   echo 'This is Build stage.' 
		   sh 'mvn clean test'
		}
		
		steps { 
		   echo 'This is Build stage 2' 
		   stash name: "buildFile", includes: "Dockerfile, buildFile/*.zip"
		   archive 'buildFile/*.zip'
		}
		
		steps { 
			unstash name: "buildFile"
		}
    	}	
	
	stage('Docker Deployment') {
		
		steps { 
			sh "docker build -t mule-test ."
		}
	
	}
	
	stage('Docker Run') {
		
		steps { 
			sh "docker run -d -p 8081:8081 mule-test"
		}
	
	}
  }
}
