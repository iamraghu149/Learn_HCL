#Create EC2 Instances



resource "aws_instance" "Web-Server" {
  ami = "ami-007020fd9c84e18c7" #ubuntu
  instance_type = "t2.micro"
  count = 2

  tags = {
    Name = "HelloWorld"
  }
}


#Create GitHub Repository Using Terraform

 resource "github_repository" "example" {
   name = "My_Awesome_Terraform_repo"
   description = "This repo is created using Terraform"

   visibility = "public"
 }
