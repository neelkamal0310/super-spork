pipeline {
    agent {
        dockerfile true
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
            steps {
                echo "Hello World"
                sh '''
                echo HEllo World
                '''
            }
        }
    }
}