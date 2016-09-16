build-docker-dev:
	cp project/requirements/common.txt docker/dev/common.txt
	cd docker/dev/ && docker build -t "gollum23/multitenant-dev" .
	rm -rf docker/dev/common.txt

push-docker-dev:
	sudo docker push gollum23/multitenant-dev

start-dev:
	cd docker/dev/ && docker-compose up -d

stop-dev:
	cd docker/dev/ && docker-compose stop

ssh-dev:
	ssh -p 2009 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no root@$(DOCKER_IP)
