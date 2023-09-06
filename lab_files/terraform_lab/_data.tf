data "aws_ami" "aws_linux" {
  most_recent = true
  owners      = ["amazon"]
  filter { 
    name   = "name"
    values = ["amzn-ami-hvm-*-x86_64-gp2",]
  } 
}


data "aws ami" "dev_arch_infra_ami" {
  most_recent = true
  owners      = ["self"]
  filter {
    name      = "name"
    values    = ["Arch test Dev Rust Python3 Amazon AMI1"]
  }


}