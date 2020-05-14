#!/bin/bash

# Install the contents manager for jupytext
jupyter lab --generate-config -y \
    && echo 'c.NotebookApp.contents_manager_class = "jupytext.TextFileContentsManager"' >> ~/.jupyter/jupyter_notebook_config.py \
    && echo 'c.ContentsManager.default_jupytext_formats = "ipynb,py"' >> ~/.jupyter/jupyter_notebook_config.py

LC_ALL=C tensorboard --logdir="/work/log" --port=6006 --bind_all &
jupyter lab --ip=0.0.0.0 --allow-root --port=8888 \
    --NotebookApp.token='token' \
    --NotebookApp.terminado_settings='{"shell_command": ["/bin/bash"]}'
