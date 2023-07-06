#!/usr/bin/env just --justfile

install:
    poetry install

install-with-docs:
    poetry install --with docs

clean:
    rm -rf .ipynb_checkpoints
    rm -rf **/.ipynb_checkpoints
    rm -rf .pytest_cache
    rm -rf **/.pytest_cache
    rm -rf .ruff_cache
    rm -rf **/.ruff_cache
    rm -rf __pycache__
    rm -rf **/__pycache__

format:
    poetry run black .

