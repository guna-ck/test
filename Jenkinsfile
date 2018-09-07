node {
      def app
      stage('clone repository') {
      checkout scm
      }
      stage('build') {
      app = docker.build("ubuntu")
      }
      
      
      
          
       stage('Push to Docker Registry'){
             docker.withRegistry('https://docker.io', 'dockerHubAccount'){
             docker.image('latest')
        }
    }
}

