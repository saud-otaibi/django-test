pipeline {
    agent any
    stages {
        stage('create_container') {
            steps {
                git branch: 'production', url: 'https://github.com/saud-otaibi/django-test.git'
                sh "docker image build -t django-app:v1.0-pipeline ."
            }
        }
        stage('run_container') {
            steps {
                sh "docker container run -d -it --rm --name mydjangoapp django-app:v1.0-pipeline"
            }
        }
        stage('kill_container') {
            steps {
                sh "docker container kill mydjangoapp"
            }
        }
    }
}
