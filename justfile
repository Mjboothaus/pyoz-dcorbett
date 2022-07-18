# Docs: https://just.systems/man/en/

project_name := "pyoz-dcorbett"
app_py := "src/app_main.py"

# set dotenv-load

# show available commands
help:
  @just -l

# create the local Python venv (.venv) and install requirements(.txt)
setup-python-venv:
	python3 -m pip install --upgrade pip
	python3 -m venv .venv
	. .venv/bin/activate
	pip-compile requirements.in
	pip install -r requirements.txt

update-reqs:
    pip-compile requirements.in