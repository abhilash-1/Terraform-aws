resource "aws_route53_record" "roboshop_r53" {
  for_each = local.ip
  zone_id =  data.aws_route53_zone.zone.zone_id
  name    = "${each.key}-${var.environment}"
  type    = "A"
  ttl     = 1
  records = [each.value]
}