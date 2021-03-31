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
                sh 'docker build -t jonasfredriksson/jenkinsdemo:$BUILD_NUMBER .'
            }
        }
        stage('Push image to docker hub'){
            steps{
                withDockerRegistry([credentialsId: "git", url: ""]){
                    sh 'docker push jonasfredriksson/jenkinsdemo:$BUILD_NUMBER'
                }
            }
        }
    }
}