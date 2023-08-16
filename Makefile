image_name = oau

build:
	docker build -t $(image_name) .

run:
	docker run -ti --rm  $(image_name)

stop:
	docker stop $(image_name)

clean:
	docker system prune -f