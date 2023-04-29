terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4"
    }
  }
  backend "s3" {
    bucket = "dev.shusann.sandbox"
    key    = "multiaccount-infra/terraform/terraform.tfstate"
    region = "ap-northeast-1"
    workspace_key_prefix = "value"
  }
}
