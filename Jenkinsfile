pipeline {
    agent any

    tools {
        maven 'Maven 3.6.3'
        jdk 'jdk_16'
    }

    stages {
        stage('Build') {
            steps {
                echo 'Hello World'
                sh 'java --version'
                sh 'mvn --version'
                sh 'mvn clean compile'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Packing to JAR') {
            steps {
                sh 'mvn package'
                sh 'docker --version'
            }
            post {
                success {
                    archiveArtifacts 'target/*.jar'
                }
            }
        }
        stage('Create docker image') {
            steps {
                sh 'docker build -t jonasfredriksson/jenkinsdemo:1.1 .'
            }
        }
        stage('Docker push') {
            docker.withRegistry('https://1234567890.dkr.ecr.us-east-1.amazonaws.com', 'ecr:us-east-1:demo-ecr-credentials') {
                docker.image('demo').push('latest')
            }
        }
    }
}