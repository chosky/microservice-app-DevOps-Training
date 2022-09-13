pipeline {
    agent any
    stages {
        stage('Clone repository Jenkins') {
            steps {
                checkout(scm)
            }
        }
        /**
        stage('Build and Push Docker Frontend Image') {
            steps {
                dir("frontend") {
                    script {
                        def frontend = docker.build('frontend')
                        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
                            frontend.push("latest")
                        }
                    }
                }
            }
        }**/

        stage('Build and Push Docker Users-API Image') {
            steps {
                dir("users-api") {
                    script {
                        def usersApi = docker.build('josehenaoo/users-api')
                        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
                            usersApi.push("latest")
                        }
                    }
                }
            }
        }

        stage('Build and Push Docker Auth-API Image') {
            steps {
                dir("auth-api") {
                    script {
                        def authApi = docker.build('josehenaoo/auth-api')
                        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
                            authApi.push("latest")
                        }
                    }
                }
            }
        }

        stage('Build and Push Docker Log-Message-Processor Image') {
            steps {
                dir("log-message-processor") {
                    script {
                        def logMessageProcessor = docker.build('josehenaoo/log-message-processor')
                        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
                            logMessageProcessor.push("latest")
                        }
                    }
                }
            }
        }

        stage('Build and Push Docker TODOs-API Image') {
            steps {
                dir("todos-api") {
                    script {
                        def todosApi = docker.build('josehenaoo/todos-api')
                        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
                            todosApi.push("latest")
                        }
                    }
                }
            }
        }

        
        stage('Deploy application') {
            steps {
                sshagent(['ssh-aws-credentials']) {
                    sh 'ssh -o StrictHostKeyChecking=no ubuntu@10.1.10.68 ansible-playbook -i ansible/inventory.yml ansible/docker_install.yml '
                }
            }
        }

        /**
        stage('Deploy application') {
            steps {
                dir("ansible") {
                    ansiblePlaybook (
                        inventory: '/home/ubuntu/microservice-app-DevOps-Training/ansible/inventory.yml',
                        installation: 'ansible',
                        limit: '',
                        playbook: '/home/ubuntu/microservice-app-DevOps-Training/ansible/docker_install.yml',
                        extras: ''
                    )
                }
            }
        }**/
    }
}
