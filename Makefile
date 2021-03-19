
.PHONY:build
build:
	@docker build -t goubuntu:1.0.3 -t latest .

.PHONY:run
run:
	@docker run -it --rm --name goubuntu goubuntu:1.0.3 /bin/bash
