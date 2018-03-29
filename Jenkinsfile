node {
      def app
      stage('clone repository') {
      checkout scm
      }
      stage('build') {
      app = docker.build("guna-ck/test")
      }
      
      
      stage('Test image') {
      app.inside {
            sh 'curl http://localhost:80 || exit 1'
            }
          }
          
       stage('Push image') {
       docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}

