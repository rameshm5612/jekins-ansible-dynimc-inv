provider "aws"{
   region  = "ap-south-1" 
}

resource "aws_instance" "AWSServer"{
     count   = 1
     ami = "ami-08e637cea2f053dfa"
     instance_type = "t2.micro"
     security_groups = ["launch-wizard-2"]
     key_name = "ramesh"
     tags = {
        Name = "tomcatservers"
     }
}

