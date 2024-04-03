#!/usr/bin/env bash

set -e
set -x

mypy .
ruff .
ruff format . --check
flake8 .
black --check --diff .
bandit -c .bandit.yml -r *


wget https://github.com/pyupio/safety-db/raw/master/data/insecure_full.json
wget https://github.com/pyupio/safety-db/raw/master/data/insecure.json
safety check --ignore=64459 --ignore=64396 --full-report
