pipeline {
    agent {
        docker {
            dockerfile true
        }
    }
    stages {
        stage("Build") {
            echo "Building project"
            steps {
                sh '''
                echo HEllo World
                '''
            }
        }
    }
}