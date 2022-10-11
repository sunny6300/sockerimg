pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/rajeshasdeveloper/sockerimg.git'
            }
        }
        stage('Build') {
            steps {
                sh 'chmod +x setup.sh'
                sh './setup.sh'
            }
        }
        stage('Push') {
            steps {
                sh 'sudo docker push rajezvlb/sockerimg:1.0.0'
            }
        }
        
    }
}