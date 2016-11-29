node {
    checkout scm
    stage ('Build') {
      withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'test_user',
                            usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD']]) {
                //available as an env variable, but will be masked if you try to print it out any which way
                sh 'echo $PASSWORD'
                echo "${env.USERNAME}"
            }
      // withCredentials([usernameColonPassword(credentialsId: 'github_user', variable: 'USERPASS')]) {
      // // withCredentials([string(credentialsId: 'my_secret_text', variable: 'MY_SECRET_TEXT')]) {
      //       sh """
      //         cd '${WORKSPACE}'
      //         export MY_SECRET_TEXT='${PASSWORD}'
      //         printenv
      //         docker build -t jenkins-test .
      //       """
      // }
    }
}