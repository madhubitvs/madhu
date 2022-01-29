terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}


#provider "aws" {
 #profile = "default"
  #region  = "us-east-1"
  #access_key = "AKIAZRKSNYAUOSXFZ3N3"
  #secret_key = "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"

#}



resource "aws_instance" "my-ec2-4m-vpc" {
  ami                    = "${var.AMI}"
  instance_type          = "${var.TYPE["t2micro"]}"
  key_name               = "ec2-mat-key"
  monitoring             = true
  vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"]
  subnet_id              = "${aws_subnet.my-subnet-public-1.id}"


   tags = {
    Terraform   = "true"
    Environment = "Terra"
    Name = "mat_tera-instance"
  }
}

