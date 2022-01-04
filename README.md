# action-helm-datree

A simple plugin for enabling the scanning of helm charts with Datree.

Example:

```
jobs:
  test:
    name: Local scan
    runs-on: "ubuntu-latest"
    steps:
      - name: Test our Datree helm action
        id: entry
        uses: AlexsJones/action-helm-datree@main
        with:
          # This is an example token, it is not active
          datree_token: "2CHvnSLvs2AthcuyZYVAMH"
      - name: Get result
        run: echo "${{ steps.entry.outputs.result }}"
```
