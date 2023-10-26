mig:
	python3 manage.py makemigrations
	python3 manage.py migrate

admin:
	python3 manage.py createsuperuser

req:
	pip3 freeze > requirements.txt

install-req:
	pip3 install -r requirements.txt

check:
	flake8 .
	isort .

run:
	python manage.py runserver

doc:
	docker-compose down
	docker-compose up -d --build

doc-run:
	docker-compose up -d