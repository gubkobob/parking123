install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python  pytest tests

mypy:
    python mypy main/

black:
    python black --diff --check main/

isort:
    python isort --check-only main/

flask8:
    python flake8 main/