pipeline {
    agent any

    stages {
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
                        AppFromJenkins
                '''
            }
        }
    }
}
