run:
	bin/rails s

docker-run:
	docker-compose up

database:
	docker-compose up db

build:
	docker-compose build

create:
	docker-compose run web bundle exec rails db:create

migrate:
	docker-compose run web bundle exec rails db:migrate

annotate:
	docker-compose run web annotate

setup: build create migrate
