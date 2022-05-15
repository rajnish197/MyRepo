pipeline {
    agent any

    tools {
        maven "MAVEN_HOME"
    }

    stages {
        stage('Build') {
            steps {
                echo 'Build App'
            }
        }
        stage('Test') {
            steps {
                echo 'Test App'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploy App'
            }
        }
    }
                
                git 'https://github.com/rajnish197/MyRepo.git'

                
                // bat "mvn -Dmaven.test.failure.ignore=true clean package"
            }

            post {
                
                success {
                    junit '**/target/surefire-reports/TEST-*pom.xml'
                    archiveArtifacts artifacts: 'pom.xml', followSymlinks: false
                    nexusPublisher nexusInstanceId: 'releases', nexusRepositoryId: 'maven-releases', packages: [], tagName: 'jenkinsnexus'
                }
            }
