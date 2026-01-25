pipeline{
    agent any
    environment{
        DOCKER='"C:\Program Files\Docker\Docker\resources\bin\docker.exe"'
    }
    stages{
        stage('Building the application'){
            steps{
                bat '%DOCKER% build -t app .'
            }
        }
        stage('Running the application'){
            steps{
                bat '%DOCKER% run --rm app'
            }
        }
    }
}