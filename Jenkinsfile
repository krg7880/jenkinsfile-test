node {
    checkout scm
    stage ('Build') {
      withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'test_user',
                            usernameVariable: 'USERNAME', passwordVariable: 'MY_SECRET_TEXT']]) {
            sh """
              set +x
              cd '${WORKSPACE}'
          
              sh ${WORKSPACE}/run.sh $MY_SECRET_TEXT
            """
      }
    }
}

// docker build --build-arg MY_SECRET_TEXT='$' -t jenkins-test .
// MY_SECRET_TEXT='$MY_SECRET_TEXT' docker build -t jenkins-test .
