node {
    checkout scm
    stage ('Build') {
      withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'test_user',
                            usernameVariable: 'USERNAME', passwordVariable: 'MY_SECRET_TEXT']]) {
            sh """
              cd '${WORKSPACE}'
              export MY_SECRET_TEXT='${PASSWORD}'
              printenv
              docker build -t jenkins-test .
            """
      }
    }
}