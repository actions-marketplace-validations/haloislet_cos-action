build:
	docker build -t haloislet/cos-action .
t:
	docker run  --env-file ./test/.env.example --rm haloislet/cos-action