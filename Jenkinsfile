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
                sh '$HOME/bin/kubectl delete -f ./app'
                sh '$HOME/bin/kubectl delete -f ./ingress/deploy-ingress.yaml'
                /*sh 'sleep 10s'
                sh '$HOME/bin/kubectl apply -f ./ingress/ingress.yaml'
                sh '$HOME/bin/kubectl apply -f ./logging'
                sh '$HOME/bin/kubectl delete -f ./monitoring'*/




            }
        }

	}
}