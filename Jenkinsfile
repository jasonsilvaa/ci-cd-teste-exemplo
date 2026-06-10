pipeline {
    agent any
    tools {
        nodejs 'Node'
    }
    stages {
        stage('Install dependencies') {
            steps {
                sh 'npm install'
            }
        }
        stage('Run tests') {
            steps {
                sh 'npm run test'
            }
        }
    }
}
