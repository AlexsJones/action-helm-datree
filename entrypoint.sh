#!/bin/bash
set -e

result="Hello ${DATREE_TOKEN}"
echo "::set-output name=result::$result"