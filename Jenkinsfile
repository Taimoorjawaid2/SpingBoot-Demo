pipeline {

agent any

  tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "Maven"
    }

        stages {


        	stage("Git Clone"){
                 steps {

                git credentialsId: 'GIT_CREDENTIALS', url: 'https://github.com/owais2021/spring-boot-web-application.git'
                }
          }


             stage('Build') {
                 steps {

                        sh "mvn clean package -Dmaven.test.skip=true"
                }
            }

            stage("Docker build"){
                 steps {

                    sh 'docker version'
                    sh 'docker build -t news .'
                    sh 'docker image list'
                    sh 'docker tag news owaiskhan02/webapplication:news'

                }
            }

            stage("Docker Login"){
                steps {
                    withCredentials([string(credentialsId: 'DOCKER_HUB_PASSWORD', variable: 'PASSWORD')]) {
                        sh 'docker login -u owaiskhan02 -p $PASSWORD'
                 }

                }
            }

            stage("Push Image to Docker Hub"){
                 steps {

                sh 'docker push owaiskhan02/webapplication:news'

                }
            }

        stage ("wait_prior_starting_smoke_testing") {
              steps {

                 echo 'Waiting for deployment to complete prior starting'
                 sleep 20 // seconds

              }
        }

        stage("Run Application") {
               steps {

                   sh 'pwd'
                   sh 'java -jar /var/lib/jenkins/workspace/SpringBoot_Web_Application/target/news-0.0.1.war &'

              }
          }
    }

}

