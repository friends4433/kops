data "template_file" "ec2_user_data" {
  template = "${file("${path.cwd}/Stratup.txt")}"
}

resource "aws_instance" "web-1" {
    ami = "ami-0261755bbcb8c4a84"
    availability_zone = "us-east-1a"
    instance_type = "t2.micro"
    key_name = "Laptop-Key"
    subnet_id = "${aws_subnet.subnet1-public.id}"
    vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
    associate_public_ip_address = true
    user_data = "${data.template_file.ec2_user_data.template}" 	
    tags = {
        Name = "Kubernets-MGMT-SVR"
        Env = "Prod"
        Owner = "RAM"
	CostCenter = "ABCD"
    }
}
