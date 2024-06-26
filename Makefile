build:
	docker compose build
up:
	docker compose up
install:
	docker compose run web bundle install &&\
	docker compose run web yarn install
setup-rails:
	docker compose exec web rails db:drop &&\
	docker compose exec web rails db:create &&\
	docker compose exec web rails db:migrate
webdev:
	docker compose exec web bin/dev