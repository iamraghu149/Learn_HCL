resource "aws_instance" "Web-Server" {
  ami = var.os #ubuntu
  instance_type = var.size

  tags = {
    Name = var.name
  }
}

# Create S3 Bucket
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucketname
}

resource "aws_iam_user" "myusers" {
  name = "${var.username}-user"
}

#output "IPAddress" {
  #value = aws_instance.Web-Server.public_ip
#}

output "DNS" {
  value = aws_instance.Web-Server.public_dns
}
