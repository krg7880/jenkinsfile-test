node {
    stage ('Build') {
      sh '''
       
          GIT_COMMIT_HASH=$(git rev-parse --short HEAD)                  
          gcloud docker -a
          docker build -t .
      '''
    }
  
}