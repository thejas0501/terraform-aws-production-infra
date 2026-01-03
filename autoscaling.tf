resource "aws_autoscaling_group" "app_asg" {
  name             = "app-asg"
  desired_capacity = 2
  min_size         = 1
  max_size         = 3
  vpc_zone_identifier = [
    aws_subnet.private.id
  ]
  health_check_type         = "ELB"
  health_check_grace_period = 300

  launch_template {
    id      = aws_launch_template.app_lt.id
    version = "$Latest"
  }

  target_group_arns = [
    aws_lb_target_group.app_tg.arn
  ]

  tag {
    key                 = "Name"
    value               = "asg-ec2"
    propagate_at_launch = true
  }
}
