terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.83.0"
    }
  }
}

provider "aws" {
 region="us-west-1"
}

module "vpc_vpc-endpoints" {
  source  = "app.terraform.io/Test-Abhinav/vpc/aws//modules/vpc-endpoints"
  version = "1.0.0"
}
resource "null_resource" "test"{
count=2
}
