terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

# The desired infrastructure state:
resource "aws_s3_bucket" "demo_bucket" {
  # S3 bucket names must be globally unique; replace "demo" with your name/random number
  bucket = "gitops-beginner-sudha-bucket-2026"
force_destroy = true
tags = {
    Environment = "Dev"
    ManagedBy   = "GitOps"
  }
}
