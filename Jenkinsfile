pipeline{
    agent any

    tools{
        maven 'Maven 3.6.3'
        jdk 'jdk_16'
    }

    stages{
        stage('Build'){
            steps{
                echo 'Hello World'
                sh 'java --version'
                sh 'mvn --version'
                sh 'mvn clean compile'
            }
        }
        stage('Test'){
            steps{
                sh 'mvn test'
            }
        }
    }
}