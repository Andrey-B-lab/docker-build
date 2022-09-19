# docker-build

This repo contains 4 files:
- Dockerfile
- Dockerfile.build
- dev-workflow.yml
- version-workflow.yml

-------------------------

Every time code has been pushed to the development branch, it builds docker image and uploading it to AWS EKS.
Every time someone will tag the version, it builds docker image and uploading it to AWS ECR.
