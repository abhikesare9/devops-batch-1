pipeline{
    agent any
    stages{
        stage("code download and software download"){
            steps{
                sh 'wget https://github.com/abhikesare9/devops-batch-1.git'
                sh 'yum update -y && yum upgrade -y'
                sh 'yum install docker -y'
                sh 'systemctl start docker'
                sh 'systemctl enable docker'
            }
        }
        stage("building docker image"){
            steps{
                sh 'cd devops-batch-1'
                sh 'docker build -t helloworld-devops:latest .'
            }
        stage("running website"){
            steps{
                sh 'docker run -d -p 8181:8181 helloworld-devops:latest'
            }
        }
        }
    }
}
