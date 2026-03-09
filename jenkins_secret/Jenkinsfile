pipeline {
    agent any

    stages {
        stage('Build Image') {
            steps {
                withCredentials([
                    string(credentialsId: 'MY_SECRET', variable: 'API_KEY')
                ]) {
                    bat '''
                        docker build \
                          --build-arg API_KEY=%API_KEY% \
                          -t secrets-demo:secure .
                    '''
                }
            }
        }
    }
}
