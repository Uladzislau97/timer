run:
	docker-compose up

build:
	docker-compose build

create:
	docker-compose run web bundle exec rails db:create

migrate:
	docker-compose run web bundle exec rails db:migrate

setup: build create migrate
