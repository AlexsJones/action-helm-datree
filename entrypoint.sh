#!/bin/bash
set -e
wget https://get.helm.sh/helm-v3.4.1-linux-amd64.tar.gz
tar xvf helm-v3.4.1-linux-amd64.tar.gz
chmod +x linux-amd64/helm
./linux-amd64/helm plugin install https://github.com/datreeio/helm-datree
./linux-amd64/helm datree test ${INPUT_CHART_DIRECTORY} -- --values ${INPUT_VALUES_FILE} > output
result=$(cat output)
echo "::set-output name=result::$result"