pipeline {
    agent any
    tools {
        java "java11"
        maven "maven3"
    }

    stages {
        stage('Building the image') {
            steps {
                sh 'mvn clen install'
            }
        }
    }
}