#!/usr/bin/env sh

set -e

export BASE_URL="/data-science-quizzes/"

npm install
npm run build

cd docs/.vuepress/dist

git init
git add -A
git commit -m "deploy"
git push -f git@github.com:RaRhAeu/data-science-quizzes.git master:gh-pages

unset BASE_URL

cd -
