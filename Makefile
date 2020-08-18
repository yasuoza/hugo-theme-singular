BASEURL ?= "http://localhost"

docker/image:
	DOCKER_BUILDKIT=1 docker build . -t hugo

docker/build:
	docker run --rm -v ${PWD}:/singular -w /singular \
		hugo \
		--contentDir /singular/exampleSite \
		--config /singular/exampleSite/config.toml \
		--baseURL ${BASEURL}

docker/server:
	docker run --rm -v ${PWD}:/singular -w /singular -p 1313:1313 \
		hugo server -D --bind 0.0.0.0 --disableFastRender \
		--contentDir /singular/exampleSite \
		--config /singular/exampleSite/config.toml \
		--baseURL ${BASEURL}
