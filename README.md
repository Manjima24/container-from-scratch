# container-from-scratch-python
This is building a container from scratch

## Build the Container Yourself and Push to Docker Hub

### Build image
*(If you want to develop yourself)* 
docker build --tag=hello-duke-cli-210 .
docker build --tag=hello .

### List docker images
docker image ls

### Run my newly built container

docker run -it hello-duke-cli-210 python app.py --name "Big John"
docker run -it hello python app.py --name "Manjima Sarkar"

### Push to Docker Hub

*Note:  You will need to change for your Docker Hub Repo*
docker push noahgift/duke102:tagname
docker push mnjima24/firstrepo:hello

 docker tag hello manjima24:latest

docker push manjima24/hello:latest

docker tag hello:latest manjima24/hello7:latest
docker push manjima24/hello7:latest

## Run it yourself

```bash
docker pull noahgift/cloudapp:latest
docker run -it noahgift/cloudapp bash 

#then run python app.py --help
```

## Pass in a command

```bash
docker run -it manjima24/container-from-scratch python app.py --name "Big John"
docker run -it manjima24/hello7 python app.py --name "Big John"
#the output
Hello Big John!
```

## Push to Amazon ECR

1.  Create ECR repository


### More things Do

* Lint the code with Github Actions (see the Makefile)
* Automatically build the container after lint, and push to DockerHub or some other Container Registery
* 

ECR push cmd
Retrieve an authentication token and authenticate your Docker client to your registry.
Use the AWS CLI:

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 472922566282.dkr.ecr.us-east-1.amazonaws.com
Note: If you receive an error using the AWS CLI, make sure that you have the latest version of the AWS CLI and Docker installed.
Build your Docker image using the following command. For information on building a Docker file from scratch see the instructions here . You can skip this step if your image is already built:

docker build -t container-scratch .
After the build completes, tag your image so you can push the image to this repository:

docker tag container-scratch:latest 472922566282.dkr.ecr.us-east-1.amazonaws.com/container-scratch:latest
Run the following command to push this image to your newly created AWS repository:

docker push 472922566282.dkr.ecr.us-east-1.amazonaws.com/container-scratch:latest



run on other VM after log to ECR and pull docker image
docker run -it 472922566282.dkr.ecr.us-east-1.amazonaws.com/container-scratch:latest python app.py --name "Big John"