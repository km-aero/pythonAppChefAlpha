# Python Cookbook     

## About
Repository contains a cookbook used in chef with a packer.json file which can create AMIs in AWS.

## Prerequisites
- packer
- chef workstation
- AWS account

## How To
- Export your environment variables (AWS access and secret keys)
- Edit packer.json to your specification:
  - subnet_id
  - ssh_keypair_name
  - ssh_private_key_file
  - region
  - source_ami_filter
  - ssh_username
  - ami_name
  - provisioners

- cd into the cloned files and run packer.json with packer

```
packer build packer.json
```

The above will create an AMI on your AWS account which can be used to make an EC2.
