pipeline {
    agent {
        docker {
            dockerfile true
        }
    }
    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM',
                branches: [[name: 'main']],
                userRemoteConfigs: [[url: 'https://github.com/neelkamal0310/super-spork.git']]
                ])
            }
        }
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