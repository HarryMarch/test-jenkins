pipeline {
    agent any
    
    stages {
        stage('Step1') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'RelativeTargetDirectory', relativeTargetDir: 'src']], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '', url: 'https://github.com/HarryMarch/test-jenkins']]])
                sh '''#!/bin/bash
                    export TEST1
                    export TEST2

                    src/execute.sh src/
                '''

                archiveArtifacts 'src/config.env'
            }
        }
    }
}