# CI/CD Demo App with Helm, Docker, and GitHub Actions

This project demonstrates a CI/CD pipeline using:

- Python (3.11)
- Docker
- GitHub Actions
- Helm



## Build Docker Image
docker build -t your-dockerhub-username/docker-pipeline-demo:latest .

## Push Docker Image
docker push your-dockerhub-username/docker-pipeline-demo:latest


## GitHub Actions CI/CD

CI/CD pipeline is defined in `.github/workflows/ci-cd.yaml`.

It includes:
- Python test & build
- Docker image build & push
- Helm-based Kubernetes deployment



## GitHub Secrets Required

Set the following secrets in **Repository Settings > Secrets**:

| Name               | Description                          |
|--------------------|--------------------------------------|
| `DOCKERHUB_USERNAME` | Your Docker Hub username            |
| `DOCKERHUB_TOKEN`    | Docker Hub access token/password    |
| `KUBECONFIG_DATA`    | Base64-encoded kubeconfig file      |

Generate `KUBECONFIG_DATA`:

cat ~/.kube/config | base64 -w 0



## Deploy with Helm

From the project root:

helm upgrade --install my-app ./helm/my-app \
  --namespace default \
  --set image.repository=your-dockerhub-username/docker-pipeline-demo \
  --set image.tag=latest \
  -f ./helm/my-app/values-dev.yaml


To deploy to prod:

helm upgrade --install my-app ./helm/my-app \
  --namespace default \
  -f ./helm/my-app/values-prod.yaml

