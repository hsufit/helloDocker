installUbuntu: 
	docker pull ubuntu:latest

installNode: 
	docker pull node:latest

ubuntuTerminal: 
	docker run -it ubuntu:latest

nodeTerminal:
	docker run -it node:latest

buildNodeHelloworld:
	docker build -t hsufit/node-web-app:latest . --no-cache

runNodeHelloworld:
	docker run -p 49160:8080 -d hsufit/node-web-app:latest && echo ok || echo err

dockerClean:
	docker container prune -f
	docker image prune -f
	-docker rmi $(docker images -f dangling=true -aq)
