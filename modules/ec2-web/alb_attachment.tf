resource "aws_lb_target_group_attachment" "alb_attachment" {
  count            = var.create_alb_attachment ? 1 : 0
  target_group_arn = var.target_group_arn
  target_id        = module.ec2-instance.id[0]
  port             = var.http_port
}
