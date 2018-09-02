node {
      def app
      stage('clone repository') {
      checkout scm
      }
      stage('build') {
      app = docker.build("ubuntu")
      }
      
      
      
          
       stage('Push to Docker Registry'){
             docker.withRegistry('https://hub.docker.com', 'dockerHubAccount'){
             docker.image('latest')
        }
    }
}

