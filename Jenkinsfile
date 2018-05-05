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
		    sh "sudo docker build -t mule-test ."
		}
	
	}
	
	stage('Docker Run') {
		
		steps {
		    echo 'This is Docker Run stage'
		    sh "sudo docker run -d -p 8081:8081 mule-test"
		}
	
	}
  }
}
