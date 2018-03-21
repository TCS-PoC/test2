#Configure the AWS EC2resource
resource "aws_instance" "instance5" {
  lifecycle {
#  create_before_destroy = false
 #   prevent_destroy = true
     ignore_changes = ["security_groups"]
  }
  ami = "ami-26ebbc5c"
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
  key_name = "key1"
  security_groups = ["sg-d4b425a0"]
  subnet_id = "subnet-2b059476" 
  tags {
    Name = "hostTerraform5"
  }
}
