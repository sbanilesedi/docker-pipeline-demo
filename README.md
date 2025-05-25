# docker-pipeline-demo


This is a simple Python Flask app to demonstrate Docker usage and CI/CD workflows.

## 🐳 Build and Run the Docker Container Locally

## Clone the repository

git clone https://github.com/your-username/docker-pipeline-demo.git

## change directory
cd docker-pipeline-demo

## Build the Docker image
docker build -t docker-pipeline-demo .

## Run the container
docker run -d -p 5000:5000 docker-pipeline-demo


## Explanation:
-d: Runs the container in the background.
-p 5000:5000: Maps port 5000 of your host to port 5000 of the container.
docker-pipeline-demo: Tag or name of the Docker image.

## Test it Locally
Open your browser and go to: http://localhost:5000