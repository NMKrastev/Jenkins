pipeline {

    agent any 

    stages {
        stage ('checkout dev') {
            steps {
                echo 'Cheking out from dev branch'
                checkout([
                    $class: 'GitSCM',
                     branches: [[name: '*/dev']], 
                     userRemoteConfigs: [[credentialsId: '2991024b-0053-4823-a02f-3813e3255eba', 
                     url: 'https://github.com/NMKrastev/Jenkins.git']]
                ])
            }
        }
        stage ('Build') {
            steps {
                sh "ls"
                sh "pwd"
                sh """
                    cd Jenkins/src
                    ls
                    javac HelloWorld.java
                """
                //input message: 'Need some input'
                script {
                    env.INPUT = input message: 'Please enter input',
                             parameters: [string(defaultValue: '',
                                          description: '',
                                          name: 'Input')]
                }
        echo "Input: ${env.INPUT}"
            }
        }
        // stage("input") {
        //     steps {
        //         script {
        //             env.RELEASE_SCOPE = input message: 'User input required', ok: 'Release!',
        //                     parameters: [choice(name: 'RELEASE_SCOPE', choices: 'patch\nminor\nmajor', description: 'What is the release scope?')]
        //         }
        //         echo "${env.RELEASE_SCOPE}"
        //     }
        // }
        // stage ("Prompt for input") {
        //     steps {
        //         script {
        //             env.INPUT = input message: 'Please enter input',
        //                      parameters: [string(defaultValue: '',
        //                                   description: '',
        //                                   name: 'Input')]
        //         }
        // echo "Input: ${env.INPUT}"
        //     }
        // }
    }
    
    post {
        always {
            echo 'I will always say Hello again!'
        }
    }
}
