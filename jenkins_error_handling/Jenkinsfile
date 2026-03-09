pipeline {
    agent any

    parameters {
        booleanParam(name: 'FORCE_FAIL', defaultValue: false)
    }

    options {
        timestamps()
    }

    stages {

        stage('Build') {
            steps {
                echo "Building application..."
                sleep 2
            }
        }

        stage('Unstable Push With Retry') {
            steps {
                script {
                    if (env.BUILD_NUMBER.toInteger() % 2 == 0) {
                        sh "exit 0"
                    } else {
                    sh "exit 1"
                    }
                }

            }
        }

        stage('Conditional Failure') {
            when {
                expression { params.FORCE_FAIL }
            }
            steps {
                echo "Forcing failure because parameter is true"
                sh "exit 1"
            }
        }

        stage('Long Running Task With Timeout') {
            steps {
                timeout(time: 5, unit: 'SECONDS') {
                    echo "Simulating long task..."
                    sleep 10
                }
            }
        }
    }

    post {

        always {
            echo "Cleaning up workspace..."
        }

        success {
            echo "Pipeline completed successfully."
        }

        failure {
            echo "Pipeline failed. Sending alert to team..."
        }

        unstable {
            echo "Pipeline is unstable."
        }
    }
}
