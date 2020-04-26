#!/bin/bash

LC_ALL=C tensorboard --logdir="/work/log" --port=6006 --bind_all &
jupyter lab --ip=0.0.0.0 --allow-root --port=8888 \
    --NotebookApp.token='token' \
    --NotebookApp.terminado_settings='{"shell_command": ["/bin/bash"]}'
