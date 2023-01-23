install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	pytest tests

mypy:
	mypy main/

black:
	black --diff --check main/

isort:
	isort --check-only main/

flask8:
	flake8 main/