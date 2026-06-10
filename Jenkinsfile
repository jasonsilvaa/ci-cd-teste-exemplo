pipeline {
    agent any
    tools {
        nodejs 'Node'
    }
    stages {
        stage('Clone repository') {
            steps {
                sh 'rm -rf ci-cd-teste-exemplo || true'
                sh 'git clone --depth 1 https://github.com/jasonsilvaa/ci-cd-teste-exemplo.git'
            }
        }
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
    post {
        always {
            archiveArtifacts artifacts: 'allure-report/**/*', allowEmptyArchive: true
        }
    }
}
