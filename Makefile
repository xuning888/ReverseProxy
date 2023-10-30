.PHONY: build
build:
	@rm -rf output/bin || true
	@mkdir -p output/bin || true
	@go build -o proxy .
	@mv proxy ./output/bin
.PHONY: docker
docker:
	@rm -rf output/bin || true
	@mkdir -p output/bin || true
	@GOOS=linux GOARCH=arm go build -o proxy .
	@mv proxy ./output/bin
	@docker rmi -f xuning888/proxy2
	@docker build -t xuning888/proxy2 .