resource "aws_lb_target_group" "app_tg" {
  name     = "app-tg"
  port     = 8080
  protocol = "HTTP"
  vpc_id   = aws_vpc.main.id

  health_check {
    path                = "/"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
    matcher             = "200"
  }
}
#resource "aws_lb_target_group_attachment" "app_attach" {
#  target_group_arn = aws_lb_target_group.app_tg.arn
#  target_id        = aws_instance.web.id
#  port             = 8080
#}
