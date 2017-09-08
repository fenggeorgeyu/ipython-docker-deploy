# ipython-docker-deploy
deploy a ipython server in docker

First create a folder in your workspace, cd into the folder you created.

To pull the docker image:

    make pull-image

To crate the docker container:

    make create

Then in your web browser type `http://localhost:8888`. This will show the IPython server. The password is `123`. You may change the password in the makefile `passwd`.
