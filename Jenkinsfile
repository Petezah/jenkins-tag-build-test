node('mac'){
  stage('Prep'){
    checkout scm

    if(env.TAG_NAME){
      def tagname = env.TAG_NAME
      echo "Building a tag: $tagname"
    } else {
      echo "Not building a tag"
    }
  }
  stage('Build'){
    sh '''make
./testprog
'''
  }
  stage('Deploy'){
    if(env.TAG_NAME){
      archiveArtifacts(artifacts: 'testprog', onlyIfSuccessful: true)
    }
  }
}