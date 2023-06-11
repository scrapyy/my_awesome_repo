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

# CI/CD

As a next step a ci/cd pipeline should be created using all of the above to deploy the application
automatically.

- Continuous integration:

Usually CI includes:
application build -> unit tests -> integration tests/contract testing 
-> code quality check (sonarqube)  -> security scan (verracode) -> docker images build and push

- Continuous Delivery

If the CI is successfull, the artifact generated will be deployed to environments.
The steps for CD will be:
- applying terraform files
- installing/upgrading helm chart ( replacing with newly built docker images )



P.S: the app is currently deployed in a kubernetes/aws environment using the procedure described above.
It can be accessed at the following url:

 - http://k8s-default-myawesom-32525fd629-46387096.us-east-1.elb.amazonaws.com/hello
 - curl -X POST --header "Authorization: mytoken" http://k8s-default-myawesom-32525fd629-46387096.us-east-1.elb.amazonaws.com/jobs









