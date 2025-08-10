# # get hosted zone details
# # terraform aws data hosted zone
# data "aws_route53_zone" "hosted_zone" {
#   name = create a veriable name 
# }

# # # create a record set in route 53
# # # terraform aws route 53 record
# resource "aws_route53_record" "site_domain" {
#   zone_id = data.aws_route53_zone.hosted_zone.zone_id
#   name    = create a veriable 
#   type    = "A"

#   alias {
#     name                   = add the load balanecer dns name
#     zone_id                = add the load balanecer dns id
#     evaluate_target_health = true
#   }
# }