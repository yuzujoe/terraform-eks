# terraform-eks

This repository is intended to create EKS clusters and to create maneged node groups and fargate by using terraform and eksctl 

### Tools

- eksctl v0.22.0
- terraform v0.25.0
- aws-cli

### Usage

1. Setting Your AWS Profile

```bash
export AWS_PROFILE=<your profile>
```

2. Create an EKS environment in Terraform

- network
```bash
cd terraform/workspaces/network

terraform init

terraform plan

terraform apply
```

- accouts

```bash
cd terraform/workspaces/accounts

terraform init

terraform plan

terraform apply
```

3. Create EKS Cluster

- eks cluster

```bash
eksctl create cluster -f eksctl/cluster.yaml
```

- maneged node group
```bash
eksctl create nodegroup -f eksctl/maneged-node-group.yaml
```

- fargate
```bash
eksctl create fargateprofile -f eksctl/fargateprofile.yaml
```

### Clean Up
- eks cluster
```bash
eksctl delete cluster -f eksctl/cluster.yaml
```

- terraform
```bash
terraform destroy
```
