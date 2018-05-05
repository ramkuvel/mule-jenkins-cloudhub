pipeline { 
    agent any  
    stages { 
	
	stage('Clean') { 
            steps { 
               echo 'This is clean stage.' 
		sh 'mvn clean test'
            }
        }
	    
        stage('Build') { 
            steps { 
               echo 'This is Build stage.' 
            }
        }
	    
 	stage('Deploy') { 
            steps { 
               echo 'This is Deploy stage.' 
            }
        }
    }
}
