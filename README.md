# terraform-ec2-vpc-subnet
This projects was implemented on a dev container with, AWS CLI and Terraform installed.

This repository has creates following components:
- vpc
- public subnets 
- internet gateway to the VPC
- route table for a public subnet
- security groups to allow specific traffic
- ec2 instances on the subnets

To run this project login to your aws account, open a terminal in the practice directory and run the following commands:

### Install modules

```sh
terraform init
```

### Once modules are installed use:
```sh
terraform plan -out=out.tfplan
```
### Apply plan to create vpc, ec2 per subnet

```sh
terraform apply out.tfplan
```
