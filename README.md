# cookiecutter-docker-jupyterlab

A [cookiecutter](https://github.com/cookiecutter/cookiecutter) template to create Docker environment for ML/DL tasks.

The resulting environment enables users to:

- install Python libraries via ```pip```
- use ```docker-compose``` to allow running multiple containers in one go
- use ```JupyterLab``` and  ```TensorBoard``` from their local web browser

## Related Work

- [cookiecutter-docker-science](https://github.com/docker-science/cookiecutter-docker-science)
- [cookiecutter-dl-work](https://github.com/eqs/cookiecutter-dl-work)

## Usage

### Options

- `author_name`: your name
- `project_name`: your project name
- `project_description`: description of your project (this will be inserted to `README.md`)
- `use_nvidia_docker`: whether to use ```nvidia-docker``` or not
- `formatter_type`: Python formatter
- `jupyter_port`: a port to access JupyterLab running on a container
- `tensorboard_port`: a port to access TensorBoard running on a container

### Generate project and launch Docker container

Run following commands:

```bash
$ cookiecutter https://github.com/kazuhirokomoda/cookiecutter-docker-jupyterlab
# cd to generated project dir
$ docker-compose build # (or docker-compose build --no-cache)
$ docker-compose up -d
```

Access following URLs from web browser:

- (JupyterLab) http://localhost:<jupyter_port>
- (TensorBoard) http://localhost:<tensorboard_port>
