variable "AWS_REGION" {    
    default = "us-east-1"
}
variable "IP_RANGE" {
  default = "10.0.0.0/16"
}

variable "availablity_zone" {
  default = "us-east-1a"

}

variable "AMI" {
    
    //default = "ami-0a8b4cd432b1c3063"
    default = "ami-01893222c83843146"
    
}

variable "pub_cidr_range" {
    
	default = "10.0.1.0/24"
}

variable "TYPE" {

    type = map(string)

    default = {
        "t2micro" = "t2.micro"
	"t3micro" = "t2.nano"
}
}
