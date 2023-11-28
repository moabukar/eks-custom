# EKS Custom Image

This project creates a new Amazon Machine Image that can be used as the base image for worker nodes in an EKS cluster. Terraform then provisions an EKS cluster with the new image. An example GitLab CI pipeline is included to automate the process.

The packer file in this repository can be edited to include additional packages that need to be present on your worker nodes.

## Using GitLab CI

By default a new AMI will **not** be created - this prevents multiple, identical images being added to AWS. Run the pipeline with the variable NEWIMG, and value "yes" to create an AMI.<br>

Before the pipeline runs, you'll need to specifiy:

- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY
- AWS_SESSION_TOKEN

In the CI/CD secret settings of your repo.

