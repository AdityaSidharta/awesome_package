#!/usr/bin/env bash

pyenv install 3.7.2
pyenv local 3.7.2
pip install pipenv
pipenv install
flit init
