variable "environnement" {
  description = "Environnement name"
  type        = string
  default     = "dev"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "aws_access_client" {
  description = "AWS access key"
  type        = string
}

variable "aws_access_secret" {
  description = "AWS access key"
  type        = string
}
