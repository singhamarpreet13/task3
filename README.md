# Terraform EC2 Instance Deployment with Auto-Generated SSH Key

This project demonstrates how to use Terraform to deploy an EC2 instance in AWS. The configuration includes the generation of a secure SSH key pair using Terraform's TLS provider and launches an EC2 instance with the key pair for SSH access.

---

## **Features**

- Deploys a `t2.micro` EC2 instance using `ami-0453ec754f44f9a4a` (Ubuntu 24.04 LTS).
- Generates a new RSA key pair for SSH access.
- Outputs:
  - Public IP address of the instance.
  - Private IP address of the instance.
  - The generated private key for SSH.

---

## **Prerequisites**

1. **Terraform**: Ensure Terraform is installed. [Install Terraform](https://www.terraform.io/downloads).
2. **AWS CLI**: Configure the AWS CLI with your credentials. [AWS CLI Configuration](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html).
3. **IAM Role/User Permissions**:
   - Permissions to create EC2 instances, key pairs, and VPC resources.

---

## **File Structure**
├── main.tf # Main configuration file 
├── variables.tf # Variables used in the Terraform plan 
├── dev.tfvars # Variable values for the deployment 
├── outputs.tf # Outputs definitions 
├── terraform.tfstate # Generated Terraform state file


**Accessing the EC2 Instance**
Step 1: Save the Private Key
After applying the configuration, Terraform will output the private key. Save it to a file and secure it:

echo "<private_key_output>" > private_key.pem
chmod 400 private_key.pem


Step 2: Connect via SSH
Retrieve the public IP address from the Terraform output or AWS Management Console, and connect using SSH:
bash
Copy code
ssh -i private_key.pem ubuntu@<public_ip>

## Variables

The following table lists the variables used in the Terraform configuration:

| Variable         | Description                               | Type   | Default Value   | Required |
|------------------|-------------------------------------------|--------|-----------------|----------|
| `aws_region`     | AWS region for resource deployment        | string | `us-east-1`     | Yes      |
| `ami_id`         | AMI ID for Ubuntu 24.04 LTS              | string | `ami-0453ec754f44f9a4a` | Yes      |
| `instance_type`  | EC2 instance type to launch              | string | `t2.micro`      | Yes      |
| `key_pair_name`  | Name of the SSH key pair                 | string | `my-key-pair`   | Yes      |

---

## Outputs

The Terraform configuration provides the following outputs:

| Output Name   | Description                       |
|---------------|-----------------------------------|
| `public_ip`   | Public IP address of the EC2 instance |
| `private_ip`  | Private IP address of the EC2 instance |
| `private_key` | Private SSH key generated for the instance |

