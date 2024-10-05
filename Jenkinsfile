pipeline {
    agent { label 'agent-1' }  // Replace 'your-agent-label' with the actual label of your agent
    stages {
        stage('Containerise') {
            steps {
                script {
                    // Print a message
                    echo 'Containerising the Flask app in Docker'

                    // Build Docker image
                    sh 'docker build -t my_app .'

                    // Optional: run the container to verify
                    sh 'docker run -d -p 5001:5001 my_app'
                }
            }
        }
    }
}
