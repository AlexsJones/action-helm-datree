#!/bin/bash
set -e
apt install libssl-dev -y
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
helm plugin install https://github.com/datreeio/helm-datree
helm datree test ${INPUT_CHART_DIRECTORY} -- --values ${INPUT_VALUES_FILE} > output
result=$(cat output)
echo "::set-output name=result::$result"