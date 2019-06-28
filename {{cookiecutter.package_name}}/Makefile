SHELL := /bin/bash

help:
	@echo "init - initialize the project"
	@echo "test - setup pyenv and pipenv"
	@echo "publishmajor - publish major version"
	@echo "publisminor - publish minor version"
	@echo "publishpatch - publish patch version"
	@echo "bumpmajor - bump major version"
	@echo "bumpminor - bump minor version"
	@echo "bumppatch - bump patch version"

init:
	bash bin/init.sh
	pipenv shell

test:
	bash bin/test.sh
	pylint {{cookiecutter.package_name}} --reports=y

publish:
	bash bin/publish.sh

bumpmajor:
	bumpversion major

bumpminor:
	bumpversion minor

bumppatch:
	bumpversion patch

publishmajor: bumpmajor publish

publishminor: bumpminor publish

publishpatch: bumppatch publish