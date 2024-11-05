all: clean lint fmt test coverage

clean:
	rm -fr .venv clean htmlcov .mypy_cache .pytest_cache .ruff_cache **/*.pyc
	rm -fr src/*.egg-info

.venv/bin/python:
	hatch env create

dev: .venv/bin/python
	@hatch run which python
	rm -fr src/*.egg-info
	toml-to-req --toml-file pyproject.toml
	mv requirements.txt src/requirements.txt

lint:
	hatch run verify

fmt:
	hatch run fmt

test:
	hatch run test

run:
	hatch run app

sync:
	databricks sync --watch . /Workspace/Applications/databricks_apps/streamlit/boilerplate

deploy:
	databricks apps deploy boilerplate --source-code-path /Workspace/Applications/databricks_apps/streamlit/boilerplate/src