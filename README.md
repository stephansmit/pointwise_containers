# Singularity containers for Pointwise

Containers to run [Pointwise](https://www.pointwise.com/) version 18.0.


## Build the container

### Local build
~~~~
singularity build pointwise_containers.sif Singularity.local
~~~~

### Singularity Hub build
Upload the installer to a temporary location via [file.io](https://www.file.io/)
~~~~
./upload_files.sh <Installer_Dir>
~~~~
Fill in the links in the recipe
~~~~
./make_recipe.sh
~~~~
Push the image to github
~~~~
git add Singularity; git commit -m "latest image"; git push;
~~~~

Trigger the build on [Singularity Hub](https://singularity-hub.org/collections/3396)


## Pull a container
~~~~
singularity pull shub://stephansmit/pointwise_containers
~~~~

## Execute Pointwise script

To execute a pointwise script:
~~~~
SINGULARITYENV_pwid_LICENSE=<port>@<host> singularity exec pointwise_containers.sif /opt/pointwise/pointwise -b <script-name>
~~~~
where  `<port>` and `<host>` point to the license server

[![https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg](https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg)](https://singularity-hub.org/collections/3396)
