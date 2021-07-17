
pipeline {
    agent any

    tools {
    
    }
    
  // parameters {
     //   string(name: 'company', defaultValue: 'Sapient', description: 'Enter your cmopany name???')
//	booleanParam(name: 'DEBUG_BUILD', defaultValue: true, description: 'do you want to buidl with debug')
//	choice(name: 'env', choices: ['DEV', 'TEST', 'PROD'], description: 'specify you build env') 
  //  }

    stages {
                stage('Install') 
                {
                            steps {
                        


                                git 'https://github.com/prateekkaushal123/react-app-jenkins.git'

                                // Run Maven on a Unix agent.
                               // sh "mvn -Dmaven.test.failure.ignore=true clean install"

                                }

                }

                stage('Build') 
                {
                    steps 
                    {
                

                        // Run Maven on a Unix agent.
                        sh "docker image build -t testreact ."

                    }

                }

                stage('Deployement') 
                {
                    steps {
                
                        // Run Maven on a Unix agent.
                        sh "docker run --name testreact -p 3000:3000 testreact "

                            }
                }

  

}
