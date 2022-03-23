run:
	bin/rails s

lock:
	bundle lock --add-platform x86_64-linux

install: lock
	bundle install

test:
	bundle exec rspec

lint:
	bundle exec rubocop .

check: test lint

database:
	docker-compose up db

database-load:
	bin/rails db:schema:load

databse-setup:
	bin/rails db:setup

migrate:
	bin/rails db:migrate

setup: install databse-setup

docker-build:
	docker-compose build

docker-run:
	docker-compose up

docker-create:
	docker-compose run web bundle exec rails db:create

docker-migrate:
	docker-compose run web bundle exec rails db:migrate

docker-annotate:
	docker-compose run web annotate

docker-setup: build docker-create docker-migrate
