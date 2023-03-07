pipeline {
  agent { label 'jenkins-node' }

  parameters {
    string defaultValue: '43.200.164.156', name: 'TOMCAT_IP'
    string defaultValue: 'ubuntu', name: 'TOMCAT_LOGIN_USER'
    string defaultValue: '/var/lib/tomcat9/webapps', name: 'TOMCAT_WEBAPP_DIR'
  }

  stages {
    stage('Checkout') {
      steps {
        git branch: 'main', url: 'https://github.com/Parkenew/source-maven-java-spring-hello-webapp.git'
      }
    }

    stage('Maven Build') {
      tools { maven 'maven' }
      steps {
        sh 'mvn clean package'
      }
    }

    stage('Deploy to Tomcat') {
      steps {
        sh "scp ${env.WORKSPACE}/target/*.war ${params.TOMCAT_LOGIN_USER}@${params.TOMCAT_IP}:${params.TOMCAT_WEBAPP_DIR}"
      }
    }
  }
}
