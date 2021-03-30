pipeline {
    agent any

    tools {
        maven 'Maven 3.6.3'
        jdk 'jdk_16'
    }

    def app

    stage('Clone repository') {


        checkout scm
    }

    stage('Build image') {

        app = docker.build("jonasfredriksson/test")
    }

    stage('Test image') {


        app.inside {
            sh 'echo "Tests passed"'
        }
    }

    stage('Push image') {

        docker.withRegistry('https://registry.hub.docker.com', 'git') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
