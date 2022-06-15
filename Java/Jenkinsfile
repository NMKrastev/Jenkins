def groovy

pipeline {

    agent any
    // environment {
    //     NEW_VERSION = '1.3.0'
    //     SERVER_CREDENTIALS = credentials('server-credentials')
    // }
    // tools {
    //     maven 'Maven'
    // }
    // parameters {
    //     //string(name: 'VERSION', defaultValue: '', description 'version to deploy')
    //     choice(name: 'VERSION', choices: ['1.1.0', '1.2.0', '1.3.0'], description: '')
    //     booleanParam(name: 'executeTests', defaultValue: true, description: '')
    // }
    stages {

        // stage("init") {
        //     steps {
        //         script {
        //             groovy = load "script.groovy"
        //         }
        //     }
        // }
        // stage("build") {
        //     steps {
        //         script {
        //             groovy.buildApp()
        //         }
                //echo 'building the application...'
                //sh "mvn install"
                //echo "building version ${NEW_VERSION}"
        //     }
        // }
        // stage("test") {
        //     when {
        //         expression {
        //             params.executeTests
        //         }
        //     }
        //     steps {
        //         script {
        //             groovy.testApp()
        //         }
                //echo 'testing the application...'
        //     }
        // }
        // stage("deploy") {
        //     steps {
        //         script {
        //             groovy.deployApp()
        //         }
                // echo 'deploying the application...'
                // echo "deploying version ${params.VERSION}"
                // withCredentials([
                //     usernamePassword(credentials: 'server-credentials', usernameVariable: USER, passwordVariable: PASSWORD)
                // ]) {
                //     sh "some script ${USER} ${PASSWORD}"
                // }
        //     }
        // }
        stage ('build') {
            steps {
                sh 'ls'
            }
        }
    }
}