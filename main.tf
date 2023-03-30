resource "aws_s3_bucket" "bucket" {
  bucket = "terraform-assignment-petrit-bucket-${var.environment}"


  tags = {
    Environment = var.environment
  }
}

resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}