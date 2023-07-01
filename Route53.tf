resource "aws_route53_zone" "example" {
  name          = "rbpatnam.live"  
  force_destroy = true  
}