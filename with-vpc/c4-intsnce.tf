resource "aws_instance" "foo" {
  ami           = data.aws_ami.amzlinux2.id 
  instance_type = "t2.micro"
  key_name      = var.key_name
  subnet_id     = module.vpc.public_subnets[0]
  
}