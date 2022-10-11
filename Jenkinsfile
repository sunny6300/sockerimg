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
                sh 'sudo docker build -t rajezvlb/sockerimg:1.0.0 .'
            }
        }
        stage('Push') {
            steps {
                sh 'sudo docker push rajezvlb/sockerimg:1.0.0'
            }
        }
        
    }
}