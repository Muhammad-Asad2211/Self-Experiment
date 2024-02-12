pipeline {
    agent any

    stages {
        stage('Checkout Git Repository') {
            steps {
                script {
                    // Checkout your Git repository
                    git url: 'https://github.com/Muhammad-Asad2211/Self-Experiment.git'
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image
                    docker.build('my-apache-server', './path/to/docker')
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
