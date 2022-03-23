run:
	bin/rails s

install:
	bundle install

test:
	bundle exec rspec

lint:
	bundle exec rubocop .

check: test lint

docker-run:
	docker-compose up

database:
	docker-compose up db

build:
	docker-compose build

docker-create:
	docker-compose run web bundle exec rails db:create

docker-migrate:
	docker-compose run web bundle exec rails db:migrate

annotate:
	docker-compose run web annotate

setup: build docker-create docker-migrate
