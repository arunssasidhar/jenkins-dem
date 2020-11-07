node {
   // Mark the code checkout 'stage'....
   stage 'checkout'

   // Get some code from a GitHub repository
   checkout scm

   // Mark the code build 'stage'....
   stage 'docker-build'

   // Run the Docker build
   sh 'docker build --tag jenkins-demo:$BUILD_NUMBER .'
 
   // Deploy to Test Environment
   stage 'deploy-docker-test'
   sh 'docker stop test || true'
   sh 'docker rm test || true'
   sh 'docker run --name test -d -p 8081:80 jenkins-demo:$BUILD_NUMBER'
   echo 'Deployed to Test @ http://localhost:8081' 
   
}
