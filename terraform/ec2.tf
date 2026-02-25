
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}
resource "aws_instance" "web" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  iam_instance_profile   = aws_iam_instance_profile.ec2_profile.name

  user_data = <<-EOF
              #!/bin/bash
                yum update -y
                yum install -y httpd git
                systemctl start httpd
                systemctl enable httpd
                
                cd /var/www/html

                if [ -d "Automated-EC2-Web-Deployment" ]; then
                  cd Automated-EC2-Web-Deployment
                  git pull
                else
                  git clone https://github.com/Muskaan-Tandel-824/Automated-EC2-Web-Deployment.git
                fi
                
                cp Automated-EC2-Web-Deployment/app/index.html /var/www/html/
              EOF

  tags = {
    Name = "terraform-web-server"
  }
}
