build:
	docker build -t mnist-fashion-serving .
.PHONY: build

push:
	sh push.sh
.PHONY: push

create-model:
	sh sagemaker_model.sh
.PHONY: create-model

create-endpoint:
	sh sagemaker_endpoint.sh
.PHONY: create-endpoint


local-test:
	docker run --rm -p 8080:8080 mnist-fashion-serving
.PHONY: local-test


local-query:
	curl -X POST http://localhost:8080/invocations -d '{"instances": [1.0,2.0,5.0]}'
.PHONY: local-query

# Result:
# {
#     "predictions": [3.5, 4.0, 5.5]
# }


endpoint-status:
	aws sagemaker describe-endpoint --endpoint-name mnist-fashion-serving
.PHONE: endpoint-status

