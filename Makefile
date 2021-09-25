
.PHONY:build
build:
	@docker build -t jimmyislive/goubuntu:1.17.1 -t latest .

.PHONY:run
run:
	@docker run -it --rm --name goubuntu goubuntu:1.17.1 /bin/bash
