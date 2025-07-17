module "ec2_instance" {
  source        = "https://github.com/Prabha211/ABC/tree/e9506940a4fa2094b9fc4c241b244eac5b68dcec/terraform-module"
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
