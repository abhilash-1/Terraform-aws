data "aws_route53_zone" "zone" {
  name         = "100pushups.online"
  private_zone = false
}