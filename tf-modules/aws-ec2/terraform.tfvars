region = "us-east-1"
availability_zone = "us-east-1a"
ami = "ami-0b0dcb5067f052a63"
instance_type = "t2.micro"
volume_size= 30
volume_type = "gp2"
key_name = "my-ssh-key"
EC2_root_volume_size = 20
EC2_root_volume_type="gp2"
tags = {
    Name = "my-ec2-instance"
    #Terraform = "Yes"
  }

