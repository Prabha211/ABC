module "ec2_instance" {
  source        = "./terraform-module"
  region        = "us-east-1"
  ami           = "ami-0c55b159cbfafe01e"  # Replace with a valid AMI ID
  instance_type = "t2.micro"
  instance_name = "MyEC2Instance"
}

output "instance_id" {
  value = module.ec2_instance.instance_id
}

output "instance_public_ip" {
  value = module.ec2_instance.instance_public_ip
}
