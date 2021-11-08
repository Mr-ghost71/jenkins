pipeline{
    
    agent{ label 'slave1'}
    environment{
        DOCKERHUB_CREDENTIALS = credentials('saeed71-dockerhub')
    }
    stages{
        stage('Cloning Git'){
            steps{
                git([url: 'https://github.com/cracksm4n/jenkins.git/', branch:'main'])
            }
        }
        stage('Build'){
            steps{
                sh 'docker build -t testshop .'
                sh 'docker tag testshop:latest saeed71/testshop'
            }
        }
        stage('login'){
            steps{
              sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'  
            }
        }
        stage('Push'){
            steps{
                sh 'docker push saeed71/testshop'
            }    
        }
        stage('Run Container on dev server'){
            steps{
                sh 'docker run -p 80:80 -d saeed71/testshop'
            }
        }
    }
    post{
        always{
            sh 'docker logout'
        }
    }
}