node {
    stage ('Build') {
      withCredentials([string(credentialsId: 'my_secret_text', variable: 'MY_SECRET_TEXT')]) {
            sh """
              #printenv
              echo '${PWD}'
              echo '${WORKSPACE}'
              cd '${WORKSPACE}'
              docker build -t jenkins-test .
            """
      }

    }
  
}