resource "aws_launch_template" "app_lt" {
  name_prefix   = "app-lt-"
  image_id      = "ami-0f5ee92e2d63afc18" # Amazon Linux 2 (Mumbai)
  instance_type = var.instance_type

  vpc_security_group_ids = [
    aws_security_group.private_ec2_sg.id
  ]

  user_data = base64encode(<<-EOF
    #!/bin/bash
    yum update -y
    yum install -y nginx
    systemctl start nginx
    systemctl enable nginx
    echo "<h1>Auto Scaling EC2 - Healthy</h1>" > /usr/share/nginx/html/index.html
  EOF
  )

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "asg-ec2"
    }
  }
}
