#!/usr/bin/env bash
git clone https://github.com/reginold/docker-compose.git
cd docker-compose
conda run --no-capture-output -n myenv python run.py
# echo "hello this salesforecast project!"