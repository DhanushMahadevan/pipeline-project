pipeline {
    agent any
    environment{
        DOCKERHUB_CREDENTIALS=credentials('dockerhub-cred')
    }
    stages {
        
        stage('Git Repository') {
        
            steps {
                git 'https://github.com/DhanushMahadevan/pipeline-project.git'
            }
        }
        
         stage('Build Docker Image') {
        
            steps {
                sh 'docker build -t dhanushmahadevan/webapp:v1.$BUILD_NUMBER .'    
            }
        }
        
        
        
         stage('Login to the DockerHub') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
        }
   
    
        stage('Pushing the Image to the DockerHub') {
      steps {
        sh 'docker push dhanushmahadevan/webapp:v1.$BUILD_NUMBER'
      }
    }
    
    
      stage('Cleanup') {
      steps {
        sh 'docker rmi dhanushmahadevan/webapp:v1.$BUILD_NUMBER'
        echo "Image Cleaned Successfully!!!!!!!!!!!"
      }
    }
    
        stage("Logout from Dockerhub") {
    steps {
      sh 'docker logout'
      echo "Pipeline Created Dhanush, Congrats!!!!!"
    }
  }
    }
}

