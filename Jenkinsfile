node {
      def app
      stage('clone repository') {
      checkout scm
      }
      stage('build') {
      app = docker.build("gunack23/ubuntu")
      }
      
      
      
          
       stage('Push to Docker Registry'){
             docker.withRegistry('https://docker.io', 'DockerHubCredentials'){
             app.push('latest')
                   
           }
    }
}

