pipeline {
  agent {
    node {
      label 'mac'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh '''make
./testprog
'''
      }
    }

    when {
      tag '*' {
        stage('Deploy') {
          archiveArtifacts(artifacts: 'testprog', onlyIfSuccessful: true)
        }
      }
    }
  }
}