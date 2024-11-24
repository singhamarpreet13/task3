# AWS region where the resources will be created
aws_region      = "us-east-1"

# AMI ID for the instance, replace with the correct Ubuntu 24.04 AMI ID for your region
ami_id          = "ami-0453ec754f44f9a4a"

# Instance type for the EC2 instance
instance_type   = "t2.micro"

# Name of the key pair to use for SSH access
key_pair_name   = "my-key-pair"

# AWS region, replace with your key pair name
region          = "us-east-1"

#### SSH key ####
# Get the key from the state file field named "private_key_pem" and save it as key.pem
# Run the below command to fix the key format
# sed 's/\\n/\n/g' key.pem > fixed_key.pem
# Use the fixed key to SSH into the instance
# ssh -i fixed_key.pem ec2-user@public_ip
