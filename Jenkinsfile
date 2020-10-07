pipeline{
    agent any
    environment {
        app_version = 'v1'
        rollback = 'false'
/*         DB_PASSWORD = '${DB_PASSWORD}'
        SECRET_KEY = '${SECRET_KEY}' */
    }
    stages{
       /*  stage('Download Docker and docker-compose') {
            steps {
                sh '''
                curl https://get.docker.com | sudo bash
                sudo usermod -aG docker $(whoami)
                sudo curl -L https://github.com/docker/compose/releases/download/1.27.3/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
                sudo chmod +x /usr/local/bin/docker-compose
                '''
            }
        } */
        stage('credentials'){
            steps {
                withCredentials([string(credentialsId: 'DB_PASSWORD', variable: 'DB_PASSWORD'),
                 string(credentialsId: 'DB_PASSWORD', variable: 'SECRET_KEY')]) {
                }
            }
        }
        stage('Build') {
            steps {
                sh "sudo -E DATABASE_URI=DATABASE_URI SECRET_KEY=SECRET_KEY DB_PASSWORD=DB_PASSWORD docker-compose up -d --build"
            }
        }
        stage('Test') {
            steps {
                sh "docker ps -a"
            }
        }
    }
}