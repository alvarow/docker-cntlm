
build:
	docker build -t alvarow/docker-cntlm:latest .

shell:
	docker run -it --rm -p 3128:3128 --name docker-cntlm-shell alvarow/docker-cntlm /bin/sh

run:	run-container

run-container:
	docker run -d -p 3128:3128 --name docker-cntlm alvarow/docker-cntlm

test:
	http_proxy=http://localhost:3128 curl -i http://www.terra.com.br/

logs:
	docker logs docker-cntlm -f

stop:
	docker stop docker-cntlm
	docker inspect -f '{{.State.ExitCode}}' docker-cntlm
	docker rm docker-cntlm

clean:  stop
	docker rmi alvarow/docker-cntlm

pull:
	docker pull alvarow/docker-cntlm

commit:
	docker commit -m "First version" -a "Alvaro Reguly" docker-cntlm alvarow/docker-cntlm:v1.0

push:
	docker push alvarow/docker-cntlm:latest

.PHONY: build shell run run-container test logs stop clean pull commit push
