# action-helm-datree

A simple plugin for enabling the scanning of helm charts with Datree.

## Example

```

name: CI
on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]
  workflow_dispatch:
jobs:
  scan:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Test our Datree helm action
        id: entry
        uses: AlexsJones/action-helm-datree@main
        with:
          datree_token: ${{ secrets.DATREE_TOKEN }}
          chart_directory: "chart"
      - name: Get result
        run: echo "${{ steps.entry.outputs.result }}"

```

### Options

```
chart_directory: <defaults to current directory - optional>
values_file: <defaults to values.yaml - optional >
datree_token: <no default - required >
```
