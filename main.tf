provider "aws" {
   region     = "ap-south-1"
   access_key = "AKIAT6VMP2QMNRSF5G7V"
   secret_key = "aTCKd30wBhfWz57jbvkkVobX5xB0Aact09MVAvA0"
}

resource "aws_instance" "ec2_example" {
   
   ami           = "ami-079b5e5b3971bd10d"
   instance_type = "t2.micro"
   
   tags = {
           Name = "Terraform EC2"
   }
}
