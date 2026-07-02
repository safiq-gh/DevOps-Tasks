pipeline {
    agent any

    stages {
        stage('Build Image') {
            steps {
                sh 'docker build -t appfromjenkins .'
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                    docker rm -f appfromjenkins || true

                    docker run -d \
                        --name appfromjenkins \
                        --restart unless-stopped \
                        -p 8090:80 \
                        appfromjenkins
                '''
            }
        }
    }
}
