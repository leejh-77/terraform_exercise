# Key pair
resource "aws_key_pair" "web_admin" {
    key_name = "web_admin" // aws 내에서 사용할 리소스 이름
    public_key = file("~/.ssh/web_admin.pub") // public key path 지정
}

# Security Group
resource "aws_security_group" "ssh" {
  name = "allow_ssh_from_all"
  description = "Allow SSH port from all"
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

data "aws_security_group" "default" {
    name = "default"
}

# EC2
resource "aws_instance" "web" {
  ami = "ami-0cbec04a61be382d9" # amzn2-ami-hvm-2.0.20200207.1-x86_64-gp2
  instance_type = "t2.micro"
  key_name = aws_key_pair.web_admin.key_name
  vpc_security_group_ids = [
    aws_security_group.ssh.id,
    data.aws_security_group.default.id
  ]
}