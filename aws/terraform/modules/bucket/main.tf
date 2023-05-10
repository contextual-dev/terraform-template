resource "aws_s3_bucket" "bucket" {
  bucket = "${var.prefix}-${var.env}-${var.bucket_name}"
  force_destroy = true
}
