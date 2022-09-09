pipeline {
    agent any
    stages {
        stage('Clone repository Jenkins') {
            steps {
                checkout scm
            }
        }

        stage('Build and Push Docker Frontend Image') {
            steps {
                dir('frontend') {
                    def frontend = docker.Build("josehenaoo/frontend")
                    docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
                        frontend.push("latest")
                    }
                }
            }
        }

        /**
        stage('Connet to Bastion') {
            println "Hello Word"
        }

        stage('Clone repository Bastion') {
            checkout scm
        }

        stage('Execute Ansible Bastion') {
            ansiblePlaybook (
                inventory: '/home/ubuntu/microservice-app-DevOps-Training/ansible/inventory.yml',
                installation: 'ansible',
                limit: '',
                playbook: '/home/ubuntu/microservice-app-DevOps-Training/ansible/docker_install.yml',
                extras: ''
            )
        }
        **/
    }
}
