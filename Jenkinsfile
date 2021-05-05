node {
	def app
	stage('Scm checkout'){
		checkout scm
		}
	stage("dockerrun"){
		sh 'chmod 777 /var/run/docker.sock'
	}
	stage('Build Image'){
	app=docker.build("svsaket/newphp3")
	}
	stage("Test Image"){
	app.inside{
	echo "app is build"}
	}
	stage("Push Image"){
	docker.withRegistry('https://registry.hub.docker.com','Dockerapp')
	{
		app.push("${env.BUILD_NUMBER}")
	app.push("latest")
		
	}
	echo "trying to push"
	}
	
	}
	
	
