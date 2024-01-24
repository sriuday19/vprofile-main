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
        stage("copying the artifact") {
            steps {
                sshagent (credentials: ['deploy-dev']) {
                sh 'ssh -o StrictHostKeyChecking=no ubuntu@107.22.107.80'
                sh 'rm -rf /usr/local/tomcat/webapps/*'
                sh 'scp /var/lib/jenkins/workspace/devsops-ci target/vprofile-v2.war ubuntu@107.22.107.80:/usr/local/tomcat/webapps/ROOT.war '
                }
            }
        }
    }  
}