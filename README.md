# docker-build

This repo contains  files:
- Dockerfile
- Dockerfile.build
- version-workflow.yml

-------------------------

Every time someone will tag the version, it builds docker image, scanning with Snyk and Sonar Cloud and uploading it to AWS ECR.
