pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
       stage('Docker build') {
            steps {
	              script {
		                    app=docker.build ("akgundyg/exercise:latest")
		                
	                      }
                    }
       }
	stage('Stop the old container') {
            steps {
			sh "docker stop $(docker ps | grep 'Up'| awk '{print \$1}')"

                    }
       }
	stage('Docker run') {
            steps {
			sh "docker run -itd -p 8082:8082 akgundyg/exercise:latest"

                    }
       }
    }
}


