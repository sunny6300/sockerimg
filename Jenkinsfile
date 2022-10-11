pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/rajeshasdeveloper/sockerimg.git'
            }
        }
        stage('Test') {
            steps {
                sh 'pwd'
                sh 'ls'
                sh './test.sh'
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