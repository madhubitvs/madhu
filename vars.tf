variable "AWS_REGION" {    
    default = "eu-west-2"
}
variable "IP_RANGE" {
  default = "10.0.0.0/16"
}

variable "availablity_zone" {
  default = "eu-west-2a"

}

variable "AMI" {
    
    default = "ami-08e4e35cccc6189f4"
    
}

variable "pub_cidr_range" {
    
	default = "10.0.1.0/24"
}

variable "TYPE" {

    type = map(string)

    default = {
        "t2micro" = "ami-03dea29b0216a1e03"
	"t3micro" = "ami-03dea29b0216a1e0"
}
}
