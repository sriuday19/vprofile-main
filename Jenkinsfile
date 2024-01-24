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
                sshagent(['tomcat']) {
                sh 'ssh -o StrictHostKeyChecking=no ubuntu@107.22.107.80'
                sh 'sudo rm -rf /opt/tomcat/webapps/*'
                sh 'scp /var/lib/jenkins/workspace/devsops-ci/target/vprofile-v2.war ubuntu@107.22.107.80:/opt/tomcat/webapps/ROOT.war'
                }
            }
        }
    }  
}