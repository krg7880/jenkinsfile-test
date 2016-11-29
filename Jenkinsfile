node {
    checkout scm
    stage ('Build') {
      withCredentials([usernameColonPassword(credentialsId: 'github_user', variable: 'USERPASS')]) {
      // withCredentials([string(credentialsId: 'my_secret_text', variable: 'MY_SECRET_TEXT')]) {
            sh """
              cd '${WORKSPACE}'
              printenv
              docker build -t jenkins-test .
            """
      }
    }
}