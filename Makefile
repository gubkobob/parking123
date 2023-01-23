install:
	pip install -r requirements.txt
#	pip install --upgrade pip &&\
#		pip install -r requirements.txt

test:
	python pytest tests

mypy:
    - mypy main/

black:
    - black --diff --check main/

isort:
    - isort --check-only main/

flask8:
    - flake8 main/