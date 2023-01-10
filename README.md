# Gitlab CI/CD images
Dockerfiles for CI/CD jobs

## Description
This repository contains two Dockerfiles that can be used as part of a CI/CD pipeline.

## helm-kubectl-gcloud - kubectl, Helm, and Dive
This Dockerfile is based on the Google cloud  SDK Alpine image and installs the following tools:
- kubectl v1.25.2
- Helm v3.10.0
- Dive v0.9.2


## sonarqube-tools - SonarQube Scanner and .NET 7 SDK
This Dockerfile is based on the .NET SDK 7 image and installs the SonarQube Scanner.


## Additional resources
- [Kubectl documentation](https://kubectl.docs.kubernetes.io/)
- [Helm documentation](https://helm.sh/docs/)
- [Dive documentation](https://github.com/wagoodman/dive)
- [SonarQube documentation](https://docs.sonarqube.org/)
- [.NET SDK documentation](https://docs.microsoft.com/en-us/dotnet/core/)

## Contribution
Feel free to fork this repository and submit pull requests with improvements or bug fixes.