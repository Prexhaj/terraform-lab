resource "aws_s3_bucket" "bucket" {
  bucket = "terraform-assignment-petrit-bucket-${var.environment}"
  acl    = "private"

  tags = {
    Environment = var.environment
  }
}