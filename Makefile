network:
	docker network create jenkins

run-host-ip: network
	docker run \
		--name jenkins-blueocean \
		--restart=on-failure --detach \
		--network jenkins \
		--env DOCKER_HOST=tcp://docker:2376 \
		--env DOCKER_CERT_PATH=/certs/client \
		--env DOCKER_TLS_VERIFY=1 \
		--publish 8080:8080 \
		--publish 50000:50000 \
		--volume jenkins-data:/var/jenkins_home \
		--volume jenkins-docker-certs:/certs/client:ro \
		myjenkins-blueocean:2.516.3-1

run-host-mount: network
	docker run \
		--name jenkins-blueocean \
		--restart=on-failure \
		-u 0 \
		-d \
		--network jenkins \
		-p 8080:8080 \
		-p 50000:50000 \
		-v jenkins-data:/var/jenkins_home \
		-v jenkins-docker-certs:/certs/client:ro \
		-v ~/.docker/run/docker.sock:/var/run/docker.sock \
		myjenkins-blueocean:2.516.3-1

stop:
	docker container stop jenkins-blueocean

remove:
	docker container rm jenkins-blueocean

remove-network:
	docker network rm jenkins

stop-remove: stop remove remove-network

console:
	docker exec -it jenkins-blueocean bash
