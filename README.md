# action-helm-datree

A simple plugin for enabling the scanning of helm charts with Datree.

## Example

```

name: CI

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the main branch
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  # This workflow contains a single job called "build"
  build:
    # The type of runner that the job will run on
    runs-on: ubuntu-latest

    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:
      # Checks-out your repository under $GITHUB_WORKSPACE, so your job can access it
      - uses: actions/checkout@v2
      - name: Check dir
        run: ls
      - name: Test our Datree helm action
        id: entry
        uses: AlexsJones/action-helm-datree@main # Uses an action in the root directory
        with:
          # This is an example token, it is not active
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
