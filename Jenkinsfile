pipeline{
   
    tools {
      jdk 'myjava'
      maven 'mymaven'
    }
    
    agent none
    stages{
        stage('Checkout'){
            agent {label 'PASlave'}
            steps{
                git 'https://github.com/arunsangubhatla/DevOpsProjCert.git'
            }
        }
        
	stage('SetupSlaveForTesting'){
            agent {label 'PASlave'}
            steps{
                sh 'ansible-playbook /etc/ansible/playbook.yml'
            }
        }
	
        stage('DeployApplication'){
          agent {label 'PASlave'}
          steps{
              sh 'sh docker.sh '
          }
        }
     
        stage('SeliniumTest'){
	    agent {label 'PASlave'}
            steps{
              sh 'mvn -f websitetestproj/pom.xml test'
            }

            post{
              failure{
                 //Testing failed - delete docker container
                sh 'sh dockercleanup.sh'
              }
            }
        }
    }
}
