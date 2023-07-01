resource "aws_s3_bucket" "s3" {
  bucket = "rbpatnam.live"
  versioning {
    enabled = true
  }
  tags = {
    Name        = "Kubernets-Configs-Files"
    Environment = "Prod"
  }
}
