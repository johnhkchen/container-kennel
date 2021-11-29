repo_name = johnhkchen/container-kennel
target_branch = main
git_url = "https://github.com/$(repo_name).git\#$(target_branch)"

.PHONY: docker-build
docker-build:
	docker build -t $(repo_name) $(git_url)

.PHONY: docker-dev
docker-dev:
	docker run -d \
	-it \
	--name devtest \
	--mount type=bind,source="$(PWD)"/src,target=/app \
	$(repo_name):latest