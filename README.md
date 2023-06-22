# Immuniweb/run-neuron-action@main

![Size](https://img.shields.io/github/repo-size/Immuniweb/run-neuron-action?style=plastic&color=0f0&label=Size)
![Updated](https://img.shields.io/github/last-commit/Immuniweb/run-neuron-action?style=plastic&color=f00&label=Updated)
![Stars](https://img.shields.io/github/stars/Immuniweb/run-neuron-action?style=plastic&color=ffc801&label=Stars)
![Forks](https://img.shields.io/github/forks/Immuniweb/run-neuron-action?style=plastic&color=003cff&label=Forks)
![Watchers](https://img.shields.io/github/watchers/Immuniweb/run-neuron-action?style=plastic&color=ff5500&label=Watchers)
![Contributors](https://img.shields.io/github/contributors/Immuniweb/run-neuron-action?style=plastic&color=f0f&label=Contributors)

This is Github action to run ImmuniWeb Neuron automated project scan.

https://www.immuniweb.com/products/neuron/

## How to use it?

1. First, you should have an active ImmuniWeb Neuron project, where you can get API key and set Target URL values.

2. Save the API key and Target URL to your Github repository using Github Secrets with example names APIKEY and TARGET.

3. Then, use the following example of ./github/workflows/neuron.yml file, that needs to be added to your repository to run automated scans:

```
# An example .yml file to run ImmuniWeb Neuron scan
name: Run ImmuniWeb Neuron scan

on:
  push:
    branches: [ "main" ]
  pull_request:
    branches: [ "main" ]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Run ImmuniWeb Neuron scan
        uses: ImmuniwebSA/run-neuron-action@main
        with:
            apikey: ${{ secrets.APIKEY }}
            target: ${{ secrets.TARGET }}
```
