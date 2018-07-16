node('mac'){
  stage('Prep'){
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
    archiveArtifacts(artifacts: 'testprog', onlyIfSuccessful: true)
  }
}
