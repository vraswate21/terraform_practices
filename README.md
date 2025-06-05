# terraform_practices# 🚀 Terraform Practices

This repository contains hands-on Terraform projects that demonstrate how to provision and manage AWS cloud infrastructure using Infrastructure as Code (IaC).

These mini-projects are designed for learning, experimenting, and building a strong foundation in DevOps, Terraform, and cloud automation.

---

## 📁 Repository Structure

Each folder contains a self-contained Terraform project:

| Folder                          | Description                                                                 |
|---------------------------------|-----------------------------------------------------------------------------|
| `EC2_instance_ssh/`             | Provision an EC2 instance with SSH access using a key pair.                |
| `ec2-instance/`                 | Launch a basic EC2 instance with public access.                            |
| `s3-bucket-static-website-hosting/` | Create an S3 bucket and configure static website hosting.              |
| `terraform-s3-bucket/`          | Create an S3 bucket with versioning and encryption enabled.                |
| `terraform-vpc/`                | Create a custom VPC with subnets, route tables, and Internet Gateway.      |
| `vpc-project/`                  | Full project to create public & private subnets with networking setup.     |

---

## 🛠️ Tools & Technologies

- **Terraform** (IaC tool)
- **AWS** (Amazon Web Services)
- **Git & GitHub** (Version control and hosting)

---

## 🚧 Prerequisites

Before running any project:

- [Install Terraform](https://developer.hashicorp.com/terraform/downloads)
- Set up AWS credentials using `aws configure` or environment variables:

```bash
export AWS_ACCESS_KEY_ID=your_key
export AWS_SECRET_ACCESS_KEY=your_secret


Getting started
cd project-folder
terraform init
terraform plan
terraform apply


💡 Learning Goals
Understand the basics of Terraform syntax and configuration

Automate provisioning of AWS resources

Learn how to manage state files and use secure practices

Practice modular and reusable IaC patterns