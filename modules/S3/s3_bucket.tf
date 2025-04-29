locals {
  random_id_suffix = random_id.bucket_id.hex
}

resource "random_id" "bucket_id" {
  byte_length = 4
}

resource "aws_s3_bucket" "static-website-bucket" {
  bucket = "${var.name}-${var.environnement}-${local.random_id_suffix}"

  tags = {
    Environment = var.environnement
  }
}

output "bucket" {
  value       = aws_s3_bucket.static-website-bucket.id
  description = "The ID of the S3 bucket"
}


