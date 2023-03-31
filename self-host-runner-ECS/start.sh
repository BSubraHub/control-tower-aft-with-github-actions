#!/bin/bash
set -e

mkdir actions-runner && cd actions-runner
curl -O -L https://github.com/actions/runner/releases/download/v2.276.1/actions-runner-linux-x64-2.276.1.tar.gz
tar xzf ./actions-runner-linux-x64-2.276.1.tar.gz
./bin/installdependencies.sh
mkdir /_work

PAT="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"
ORG="Bharath-1991"
REPO="private-control-tower-aft-with-github-actions"

AUTH_HEADER="Authorization: token ${PAT}"
API_VERSION=v3
API_HEADER="Accept: application/vnd.github.${API_VERSION}+json"
_FULL_URL="https://api.github.com/repos/${ORG}/${REPO}/actions/runners/registration-token"
RUNNER_TOKEN="$(curl -XPOST -fsSL \
  -H "${AUTH_HEADER}" \
  -H "${API_HEADER}" \
  "${_FULL_URL}" \
| jq -r '.token')"

./config.sh --url https://github.com/${ORG}/${REPO} --token "${RUNNER_TOKEN}" --name "aws-runner" --work _work --labels aws-runner --unattended --replace
./bin/runsvc.sh