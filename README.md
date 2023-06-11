# my_awesome_repo
My awesome codebase



# Build and push images

Requirements: docker

How to:
 - ./build_push_image.sh "../apps/app_a" "$DOCKER_REPO" "DOCKER_TAG" true
 - ./build_push_image.sh "../apps/app_b" "$DOCKER_REPO" "DOCKER_TAG" true

# Run apps in docker containers

Requirements: 
 - docker
 - app will run on localhost on port 5002, make sure it's available

How to:
./run_containers.sh

# Terraform

Requirements:
 - terraform
 - github account, you must generate a token and put it in git_repo.tf
 - aws account, you must create an iam user and replace the access keys in eks.tf

How to:
- terraform init
- terraform apply

# Helm

Requirements:
 - helm
 - terraform template must be applied
 - kubernetes cluster must be configured
 - docker images must be built and pushed to a registry, 
   make sure you replace docker repo and tag in values.yaml

How to:
 - helm install my-chart .