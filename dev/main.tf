terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.96"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_client
  secret_key = var.aws_access_secret
}

module "s3_bucket" {
  source = "../modules/S3"

  name          = "jv-website"
  environnement = var.environnement

}

module "static_website" {
  depends_on = [module.s3_bucket]
  source     = "../modules/S3/objects/static_website"

  bucket_id = module.s3_bucket.bucket
}


