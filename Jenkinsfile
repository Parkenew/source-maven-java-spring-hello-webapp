pipeline{
    agent{ label 'jenkins-node'}
    stages{
        stage('Checkout'){
            steps{
                git branch: 'main', url: 'https://github.com/Parkenew/source-maven-java-spring-hello-webapp'
            }
        }
        stage('Maven Build'){
            steps{
                sh 'mvn clean package'
            }
        }
        stage('Deploy to Tomcat'){
            steps{
                sh ' scp /var/lib/jenkins/workspace/maven_pipeline/target/hello-world.war ubuntu@172.31.38.57:/var/lib/tomcat9/webapps'
            }
        }
    }
}
