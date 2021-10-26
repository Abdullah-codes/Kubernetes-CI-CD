#!/usr/bin/groovy

pipeline {
    agent any

    options {
        disableConcurrentBuilds()
    }

    
    stages {

        stage('Package installation'){
            steps {
                sh './bash-automation.sh'
            }
        }

        stage('App deplyoment'){
            steps {
                sh '$HOME/bin/kubectl config get-contexts'
                sh '$HOME/bin/kubectl get all'
                sh '$HOME/bin/kubectl apply -f ./app'
                sh '$HOME/bin/kubectl apply -f ./ingress'


            }
        }

	}
}