node {
      def app
      stage('clone repository') {
      checkout scm
      }
      stage('build') {
      app = docker.build("gunack23/ubuntu1")
      }
      
      
      
          
       stage('Push to Docker Registry'){
             withCredentials([usernamePassword(credentialsId: 'DockerHubCredentials', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
          sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          sh 'docker push gunack23/ubuntu1:latest'
                   
           }
    }
}



