node {
    checkout scm
    stage ('Build') {
      withCredentials([usernameColonPassword(credentialsId: 'github_user', variable: 'USERPASS')]) {
      // withCredentials([string(credentialsId: 'my_secret_text', variable: 'MY_SECRET_TEXT')]) {
            sh """
              cd '${WORKSPACE}'
              ls -lart .
              export MY_SECRET_TEXT=$MY_SECRET_TEXT
              docker build -t jenkins-test .
            """
      }
    }
}