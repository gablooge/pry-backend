#!/usr/bin/env bash

set -e
set -x

mypy .
ruff .
ruff format . --check
flake8 .
black --check --diff .
