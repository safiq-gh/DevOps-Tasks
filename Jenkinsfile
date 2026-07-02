pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Image') {
            steps {
                sh 'docker build -t AppFromJenkins .'
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                    docker rm -f AppFromJenkins || true

                    docker run -d \
                        --name AppFromJenkins \
                        --restart unless-stopped \
                        -p 8090:80 \
                        myapp
                '''
            }
        }
    }
}
