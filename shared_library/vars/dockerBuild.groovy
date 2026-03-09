def call(String imageTag) {
    echo "Building Docker image ${imageTag}"

    if (isUnix()) {
        sh "docker build -t ${imageTag} ."
    } else {
        bat "docker build -t ${imageTag} ."
    }
}
