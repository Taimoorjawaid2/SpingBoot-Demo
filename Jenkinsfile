pipeline {

agent any

  tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "Maven"
    }

        stages {

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


    }

}

