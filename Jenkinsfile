pipeline {
    agent any
    //triggers {}
    //options {}
    //parameters {}
    //tools {}

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/arunssasidhar/jenkins-demo.git'

                // Run the Docker build
                sh 'docker build --tag jenkins-demo:$BUILD_NUMBER .'
            }
        }
        stage('Deploy') {
            steps {
                // Deploy to Test Environment
                sh 'docker stop test || true'
                sh 'docker rm test || true'
                sh 'docker run --name test -d -p 8081:80 jenkins-demo:$BUILD_NUMBER'
                echo 'Deployed to Test @ http://localhost:8081' 
            }
        }
    }
}
