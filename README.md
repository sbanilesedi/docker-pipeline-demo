# docker-pipeline-demo

## 🐳 Build and Run the FastAPI App with Docker

### 1. Build the Docker image

docker build -t books-api .

## Run the Docker container
docker run -d -p 8080:8080 books-api

## Optional: Override defaults using environment variables

docker run -p 8080:8080 \
  -e PAGE_SIZE=5 \
  -e LOG_LEVEL=DEBUG \
  -e APP_ENV=dev \
  books-api

##
 Visit in your browser: http://localhost:8080/books
