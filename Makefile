install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	pytest tests

mypy:
	mypy --check-untyped-defs main/

black:
	black --line-length 79 --check --diff main/

isort:
	isort --check-only main/

flask8:
	flake8 main/