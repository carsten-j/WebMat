#!/bin/zsh --login
set -e

conda env create \
  --file environment.yml \
  --force

conda activate webmat

 # JupyterLab renderer support for plotly
jupyter labextension install --no-build jupyterlab-plotly@4.14.3
jupyter labextension install --no-build @jupyter-widgets/jupyterlab-manager plotlywidget@4.14.3

jupyter lab build