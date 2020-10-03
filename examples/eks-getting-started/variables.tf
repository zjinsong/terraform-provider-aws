variable "aws_region" {
  default = "cn-northwest-1"
}

variable "cluster-name" {
  default = "terraform-eks-demo"
  type    = string
}

data "aws_ami" "eks_ami" {
  filter {
    name   = "name"
    values = ["amazon-eks-node-1.15-v*"]
  }

  most_recent = true
  owners      = ["961992271922"] # Amazon EKS AMI Account ID
}

