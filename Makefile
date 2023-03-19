START=$(pwd)


test: 
	docker-compose run --rm app sh -c "python manage.py test"

lint:
	docker-compose run --rm app sh -c "flake8"

wait_for_db:
	docker-compose run --rm app sh -c "python manage.py wait_for_db"
