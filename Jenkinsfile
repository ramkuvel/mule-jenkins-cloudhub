node{
  
  try {
   
    def mavenHome
	
    stage('Get Source') {
        
      mavenHome = tool 'M3'
   }
    
   stage('Build') {
      sh "${mavenHome}/bin/mvn clean package -Dmaven.test.skip=true -DskipMunitTests"
   }
   
   stage('Build File') {
        stash name: "buildFile", includes: "buildFile/*.zip"
        archive 'buildFile/*.zip'
   }

  } catch (ex) {
    throw ex
  }
  
}
