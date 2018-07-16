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
    
    stage('Deploy') {
      when { tag "*" }
            steps {
                echo 'Deploying only because this commit is tagged...'
                archiveArtifacts(artifacts: 'testprog', onlyIfSuccessful: true)
            }
    }
  }
}