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
		                    app=docker.build ("akgundyg/exercise")
		                
	                      }
                    }
       }
    }
}
