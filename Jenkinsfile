pipeline{
        agent any
        environment {
            app_version = 'v1'
            rollback = 'false'
        }
        stages{
                    stage('pwd and cd'){
                        steps{
                            sh "pwd && cd sfia-2"
                        }
                    }
/*             stage('Build Image'){
                steps{
                    script{
                        if (env.rollback == 'false'){
                            image = docker.build("georgepemberton1998/sfia-2")
                        }
                    }
                }
            }
            stage('Tag & Push Image'){
                steps{
                    script{
                        if (env.rollback == 'false'){
                            docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials'){
                                image.push("${env.app_version}")
                            }
                        }
                    }
                }
            } */
            stage('Deploy App'){
                steps{
                    sh "docker-compose up -d"
                }
            }
        }
}