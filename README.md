[![CircleCI](https://circleci.com/gh/SavanGowda/project-ml-microservice-kubernetes.svg?style=svg)](https://circleci.com/gh/SavanGowda/project-ml-microservice-kubernetes)

## Project Summary

This project is from the module Microservices at Scale using AWS & Kubernetes (Udacity Cloud DevOps Nanodegree Program)

In this project a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on is used. This project contains a Python flask app file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling. The data used in this project is taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).

### Project Goal

The project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications.

#### The following are the completed Project tasks --
- [x] Test your project code using linting
- [x] Complete a Dockerfile to containerize this application
- [x] Deploy your containerized application using Docker and make a prediction
- [x] Improve the log statements in the source code for this application
- [x] Configure Kubernetes and create a Kubernetes cluster
- [x] Deploy a container using Kubernetes and make a prediction
- [x] Upload a complete Github repo with CircleCI to indicate that your code has been tested

---
## Steps to run the Project
### Setup the Environment

#### Create a virtualenv and activate it

1. `python3 -m ~/<name-of-the-env>`
2. `source ~/<name-of-the-env>/bin/activate`

#### Running the Makefile
* Run `make install` to install the necessary dependencies
* Run `make lint` to lint the Dockerfile and the python files
* Run `make validate-circleci` to validate the CircleCI's `config.yml`
* Run `make run-circleci-local` to execute circleci locally through cli

#### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

#### Make Predictions

* Make sure that `app.py` is running either through Standalone or through Docker or through Kubernetes
* Run the file `make_prediction.sh` to see the results from the `app.py`

# CircleCI

* Click on the CircleCI badge to know the status of the build of this project.
