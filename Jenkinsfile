node {
      def app
      stage('clone repository') {
      checkout scm
      }
      stage('build') {
      app = docker.build("guna-ck/test")
      }
      
      
      
          
       stage('Push image') {
       docker.withRegistry('https://registry.hub.docker.com', 'dockerhubcredentials' ) {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}

