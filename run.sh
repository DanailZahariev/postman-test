#!/bin/bash

if [ ! -f .env ]; then
  echo ".env not found. Please copy .env.example and set your credentials."
  exit 1
fi

export $(grep -v '^#' .env | xargs)

npx newman run collection.json \
  --env-var base_url=https://api.github.com \
  --env-var github_token=$GITHUB_TOKEN \
  --reporters cli,html \
  --reporter-html-export newman-report.html
