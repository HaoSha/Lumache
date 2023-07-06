#!/usr/bin/env just --justfile

install:
    poetry install

clean:
    rm -rf .ipynb_checkpoints
    rm -rf **/.ipynb_checkpoints
    rm -rf .pytest_cache
    rm -rf **/.pytest_cache
    rm -rf .ruff_cache
    rm -rf **/.ruff_cache
    rm -rf __pycache__
    rm -rf **/__pycache__

install-sphinx-in-docs-group:
    poetry add sphinx --group docs

initialize-sphinx:
    poetry run sphinx-quickstart docs

build-sphinx-for-the-first-time:
    poetry run sphinx-build -b html docs/source/ docs/build/html

format:
    poetry run black .

