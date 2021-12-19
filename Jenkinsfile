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
                sh 'sleep 2s'
                sh '$HOME/bin/kubectl config get-contexts'
                sh '$HOME/bin/kubectl get all'
                /*sh '$HOME/bin/kubectl delete -f ./app'*/
                /*sh '$HOME/bin/kubectl delete -f ./ingress/deploy-ingress.yaml'
                sh 'sleep 25s'
                sh '$HOME/bin/kubectl delete -f ./ingress/ingress.yaml'
                sh '$HOME/bin/kubectl delete -f ./logging'
                sh '$HOME/bin/kubectl delete -f ./monitoring'*/




            }
        }

        stage('ingress deplyoment'){
            steps {
                /* for installation */
                /*sh '$HOME/bin/kubectl apply -f ./ingress/deploy-ingress.yaml'
                sh 'sleep 40s'
                sh '$HOME/bin/kubectl apply -f ./ingress/ingress.yaml'*/

                /* for uninstallation*/
                /*sh '$HOME/bin/kubectl delete -f ./ingress/ingress.yaml'
                sh 'sleep 5s'
                sh '$HOME/bin/kubectl delete -f ./ingress/deploy-ingress.yaml'*/

                sh '''
                    echo "hello" 
                   ''' 

            }
        }

        stage('Logging stack deplyoment'){
            steps {
                
                sh '$HOME/bin/kubectl delete -f ./logging'

            }
        }

        stage('Monitoring stack deplyoment'){
            steps {
                /*sh '''
                    $HOME/bin/helm repo add prom-repo https://prometheus-community.github.io/helm-charts
                    $HOME/bin/helm install monitoring prom-repo/kube-prometheus-stack
                   '''*/
                sh '''
                    $HOME/bin/helm uninstall monitoring 
                   '''     
                sh '''
                    echo "hello" 
                   '''

            }
        }

	}
}