pipeline {
    agent any

    tools {
        jdk 'JDK21'
        maven 'Maven3'
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t  saladishanmukh/zzzz-cicd:v1 .'
            }
        }

        stage('Push Docker Image') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub',
                    usernameVariable: 'shanmukhsrinivas47@gmail.com',
                    passwordVariable: 'Shanmukh#123'
                )]) {
                    sh 'docker login -u %shanmukhsrinivas47@gmail.com% -p %Shanmukh#123%'
                    sh 'docker push saladishanmukh/zzzz-cicd:v1'
                }
            }
        }
    }
}