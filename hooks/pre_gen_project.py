# -*- coding: utf-8 -*-
import os

tmpl = """# https://github.com/docker/compose/issues/2380#issuecomment-514215546
HOST_UID={uid}
HOST_GID={gid}
JUPYTER_PORT={{ cookiecutter.jupyter_port }}
TFBOARD_PORT={{ cookiecutter.tensorboard_port }}
{% if cookiecutter.use_nvidia_docker == 'yes' %}
# TODO: not yet tested on GPU device
NVIDIA_VISIBLE_DEVICES=0
NVIDIA_DRIVER_CAPABILITIES=all
{% endif %}
"""

gid = os.getgid()
uid = os.getuid()

with open('./.env', 'w') as f:
    f.write(tmpl.format(gid=gid, uid=uid))
