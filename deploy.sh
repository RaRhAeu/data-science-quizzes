
#!/usr/bin/env sh

set -e

if [ -z "$ACCESS_TOKEN" ] && [ -z "$GITHUB_TOKEN" ]
then
 echo "You must provide the action with either a Personal Access Token or the GitHub Token secret in order to deploy."
 exit 1
fi

REPOSITORY_PATH="https://${ACCESS_TOKEN:-"x-access-token:$GITHUB_TOKEN"}@github.com/${GITHUB_REPOSITORY}.git" && \


# Gets the commit email/name if it exists in the push event payload.
COMMIT_EMAIL=`jq '.pusher.email' ${GITHUB_EVENT_PATH}`
COMMIT_NAME=`jq '.pusher.name' ${GITHUB_EVENT_PATH}`

# If the commit email/name is not found in the event payload then it falls back to the actor.
if [ -z "$COMMIT_EMAIL" ]
then
 COMMIT_EMAIL="${GITHUB_ACTOR:-github-pages-deploy-action}@users.noreply.github.com"
fi

if [ -z "$COMMIT_NAME" ]
then
 COMMIT_NAME="${GITHUB_ACTOR:-GitHub Pages Deploy Action}"
fi

# Directs the action to the the Github workspace.
cd $GITHUB_WORKSPACE && \

# Configures Git.
git init && \
git config --global user.email "${COMMIT_EMAIL}" && \
git config --global user.name "${COMMIT_NAME}" && \


export BASE_URL="/data-science-quizzes/"

npm run build

cd docs/.vuepress/dist

git init
git add -A
git commit -m "deploy"

git push -f $REPOSITORY_PATH master:gh-pages

unset BASE_URL

cd -
