node {
      def app
      stage('clone repository') {
      checkout scm
      }
      stage('build') {
      app = docker.build("ubuntu")
      }
      
      
      
          
       stage('Push image') {
       docker.withRegistry('https://registry.hub.docker.com', 'dockerHubAccount' ) {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}

