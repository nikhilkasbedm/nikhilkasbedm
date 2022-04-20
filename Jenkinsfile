pipeline {
  agent { label 'linux'}
  options {
    skipDefaultCheckout(true)
  }
  stages{
    stage('clean workspace') {
      steps {
        cleanWs()
      }
    }
    stage('checkout') {
      steps {
        checkout scm
      }
    }
    stage('gcloud') {
      steps {
        sh '''gcloud --version
        gcloud auth list
        whoami
        '''
      }
    }
    
    stage('execute') {
      steps {
        sh 'chmod 777 terraformw'
      }
    }
    stage('terraform init') {
     steps {
       sh 'terraform init'
      }
    }
   stage('Terraform Plan') {
   when {
       not {
           branch 'master'
       }
   }
   steps {
      sh 'terraform plan'
       }
   }
   stage('terraform apply') {
     when {
       branch 'master'
       }
      steps {
        sh 'terraform apply -auto-approve'
      }
    }
  }
  post {
    always {
      cleanWs()
    }
  }
}
