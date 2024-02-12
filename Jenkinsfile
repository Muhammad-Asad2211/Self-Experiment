pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image
                    docker.build('my-apache-server', '.')
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    // Run Docker container
                    docker.image('my-apache-server').run('-p 8080:80')
                }
            }
        }
    }
}

