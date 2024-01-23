pipeline {
    agent any
    tools {
        jdk "java11"
        maven "maven3"
    }

    stages {
        stage('Building the image') {
            steps {
                sh 'mvn clean install'
            }
        }
    }
}