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
                withCredentials([
                string(credentialsId: 'AWS_ACCESS_KEY_ID', variable: 'awsAccessKey'),
                string(credentialsId: 'AWS_SECRET_ACCESS_KEY', variable: 'awsSecretKey'),
                string(credentialsId: 'AWS_DEFAULT_REGION', variable: 'awsDefaultRegion')
                ]) {
                    sh '''
                    export AWS_ACCESS_KEY_ID=$awsAccessKey
                    export AWS_SECRET_ACCESS_KEY=$awsSecretKey
                    export AWS_DEFAULT_REGION=$awsDefaultRegion
                    aws s3 ls
                    '''
                }
            }
        }
    }
}