# {{ cookiecutter.project_name }}

{{ cookiecutter.project_description }}

# Author

{{ cookiecutter.author_name }}

# How to use

Run command:

```
cd <project dir>; pwd
docker-compose build # (or docker-compose build --no-cache)

# start
docker-compose up -d

# stop
docker-compose down
```

Access following URLs from web browser:

- (JupyterLab) http://localhost:{{ cookiecutter.jupyter_port }}
- (TensorBoard) http://localhost:{{ cookiecutter.tensorboard_port }}
