node {
    checkout scm
    stage ('Build') {
      withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'test_user',
                            usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD']]) {
            sh """
              cd '${WORKSPACE}'
              export MY_SECRET_TEXT='${PASSWORD}'
              printenv
              docker build -t jenkins-test .
            """
      }
    }
}