resource "aws_instance" "devops-QA" {
 ami = var.ami_id
 instance_type = "t2.micro"

 tags = {
    Name = "DevOps-QA1"
 }

}

output "instance_id" {
   description = "The ec2 instance id"
   #value = aws_instance.devops.id
   value = aws_instance.devops-QA.arn
}
output "public_ip" {
   description = "The ec2 instance id"
   #value = aws_instance.devops.id

   value = aws_instance.devops-QA.public_ip
}
