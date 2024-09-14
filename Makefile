IMAGE := overlydev/steamcmd

image:
	docker build -t $(IMAGE) .

run: image
	docker run --rm -it $(IMAGE)
