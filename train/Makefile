login:
	aws ecr get-login --no-include-email --region us-east-1 --registry-ids 763104351884
.PHONY: login

build:
	docker build -t mnist-fashion-serving:latest .	
.PHONY: build

#local-test:
	
#.PHONY: local-test

push:
	sh push.sh
.PHONY: push

