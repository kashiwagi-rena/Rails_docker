build:
	docker compose build --no-cache
up:
	docker compose up
down:
	docker compose down
install:
	docker compose run web bundle install &&\
	docker compose run web yarn install
setup-drop:
	docker compose exec web rails db:drop
setup-create:
	docker compose exec web rails db:create
setup-migrate:
	docker compose exec web rails db:migrate
webdev:
	docker compose exec web bin/dev