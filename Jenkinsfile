pipeline {
    agent any

    stages {
        stage('Compile Stage') {
            steps {
                 withMaven(maven : 'maven_3_6_3') {
                          sh 'mvn clean compile'
                 }
            }
        }

        stage('Testing stage') {
            steps {
                  withMaven(maven : 'maven_3_6_3') {
                           sh 'mvn test'
                  }
                        }
        }

        stage('Package stage') {
            steps {
                  withMaven(maven : 'maven_3_6_3') {
                           sh 'mvn clean package'
                  }
            }
        }
    }
}