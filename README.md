# scRNAseq_Docker
Docker Image for scRNAseq and RNAseq analysis

## To build 
first create a .Renviron file that has github auth key
GITHUB_PAT="string"
ensure this file is in the docker/ folder before build

Then:
cd docker/
docker build -f Dockerfile -t name:tag

## To Run 
cd working_directory/
docker run --rm \
-p 8787:8787
-e DISABLE_AUTH=true \
-v $(pwd):/home/rstudio/local \
dockerimagename:tag

now open interface at "localhost:8787"

### Run on Windows
docker run --rm --name NAMEOFYOURCONTAINER -p 8787:8787 -e PASSWORD=YOURPW -v YOURFILEPATH:/home/rstudio/miniconda3 eomesodermin/scrnaseq

### useful commands in docker 
- docker system df
- docker volume ls 
- docker volume prune 
- docker system prune 
- close container in terminal = ctrl + c

- open bash in the container = docker exec -it (container-name-or-id) bash
- set behaviour to show all messages during build: 
- export BUILDKIT_PROGRESS=plain # or TTY for tidy output
- to build fresh = --no-cache

## To push to dockerhub 
docker login -u "username" -p "password"
docker tag image:tag dockerhub_username/image
docker push dockerhub_username/image


 

