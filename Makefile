START=$(pwd)


test:
	docker-compose run --rm app sh -c "python manage.py test"

lint:
	docker-compose run --rm app sh -c "flake8"

wait_for_db:
	docker-compose run --rm app sh -c "python manage.py wait_for_db"

migrations:
	docker-compose run --rm app sh -c "python manage.py makemigrations"

wait_and_migrations:
	docker-compose run --rm app sh -c "python manage.py wait_for_db && python manage.py makemigrations"

createsuperuser:
	docker-compose run --rm app sh -c "python manage.py createsuperuser"
