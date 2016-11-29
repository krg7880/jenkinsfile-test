node {
    stage ('Build') {
      withCredentials([string(credentialsId: 'my_secret_text', variable: 'MY_SECRET_TEXT')]) {
            sh """
              #printenv
              cd '${WORKSPACE}'
              ls -lart .
              docker build -t jenkins-test .
            """
      }

    }
  
}