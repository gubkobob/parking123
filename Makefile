install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	pytest tests

mypy:
	mypy --check-untyped-defs main/
	mypy --check-untyped-defs tests/

black:
	black --line-length 79 --check --diff main/
	black --line-length 79 --check --diff tests/

isort:
	isort --check-only main/
	isort --check-only tests/

flake8:
	flake8 main/
	flake8 tests/
