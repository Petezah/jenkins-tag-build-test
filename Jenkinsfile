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
        archiveArtifacts(artifacts: 'testprog', onlyIfSuccessful: true)
      }
    }
  }
}