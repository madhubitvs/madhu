resource "aws_vpc" "my-new-vpc" {
    cidr_block = "${var.IP_RANGE}"
    enable_dns_support = "true" #gives you an internal domain name
    enable_dns_hostnames = "true" #gives you an internal host name
    enable_classiclink = "false"
    instance_tenancy = "default"    
    
    tags = {
        Name = "my-new-vpc"
    }
}

resource "aws_subnet" "my-subnet-public-1" {
    vpc_id = "${aws_vpc.my-new-vpc.id}"
    cidr_block = "${var.pub_cidr_range}"
    map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zone = "${var.availablity_zone}"
    tags = {
        Name = "my-subnet-public-1"
    }
}



