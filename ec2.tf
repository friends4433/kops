resource "aws_instance" "web-1" {
    ami = "ami-0261755bbcb8c4a84"
    availability_zone = "us-east-1a"
    instance_type = "t2.micro"
    key_name = "Laptop-Key"
    subnet_id = "${aws_subnet.subnet1-public.id}"
    vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
    associate_public_ip_address = true	
    tags = {
        Name = "Ubuntu-Server"
        Env = "Prod"
        Owner = "RAM"
	CostCenter = "ABCD"
    }
}
