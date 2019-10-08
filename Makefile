
.PHONY:build
build:
	docker build -t goubuntu:1.0.0 .

.PHONY:run
run:
	docker run -it --rm --name goubuntu goubuntu:1.0.0 /bin/bash
