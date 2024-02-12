pipeline {
    agent any

    stages {
        stage('Checkout Source Code') {
            steps {
                // Checkout source code from Git repository
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Muhammad-Asad2211/Self-Experiment.git']])
            }
        }
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
