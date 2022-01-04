#!/bin/bash
set -e

result="Hello ${INPUT_DATREE_TOKEN}"
echo "::set-output name=result::$result"