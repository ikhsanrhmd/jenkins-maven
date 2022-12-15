pipeline {
    agent any
   
    environment{
        PASS = credentials("registry_pass")
    }

    stages {
        stage('build'){
            steps{
                sh '''
                   ./jenkins/build/mvn.sh mvn -B -DskipTest clean package
                   ./jenkins/build/build.sh
                   '''
             }
        }
        stage('test'){
            steps{
                sh '''
                   ./jenkins/build/mvn.sh mvn test 
                   '''
            }
        }
        stage('deploy'){
            steps{
                sh '''
                   ./jenkins/deploy/deploy.sh
                   '''


             }
        }
    }
}
