## AWS assume role details and profile name need to be updated here

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA2ILO7YHVHQOKLL5Z"
  secret_key = "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"
}

# Data block for importing the existing availablility zones


# Defining the EC2
resource "aws_instance" "ec2_instance" {
  ami                          = "${var.ami_id}" # Use the latest version of the Golden image and please do not use Marketplace images
  availability_zone            = "${var.avb_zone}"
  instance_type                = "${var.instance_type}"
  #associate_public_ip_address = "false" # Set to true if public ip address needs to be attached to the instance
  subnet_id                    = "${var.subnet_id}"
  #key_name                     = "${var.key_name}"
  #iam_instance_profile         = "iar-SsmAdmin"
  #security_groups     = "${var.sg_ids}"
  #disable_api_termination      = "true"
  #depends_on =["aws_ebs_encryption_by_default.ebs_def","aws_ebs_default_kms_key.key_def"]
  #tags                         = "${merge(var.default_tags, map("Name",var.ec2_name))}"
  #volume_tags = "${var.default_tags}"
  
  tags = {
    Name = "Test-Server"
  }


# ebs_block_device { 
#          device_name           = "/dev/sdc"
#          volume_size           = 60
#          volume_type           = "gp2"
#		  }

 ebs_block_device { 
           device_name           = "xvdb"
           volume_size           = 50
           volume_type           = "gp2"
		  }

  ebs_block_device { 
           device_name           = "xvdc"
           volume_size           = 50
           volume_type           = "gp2"
 		  }

}

#inorder to encrypt volumes the below 2 resource blocks are required
#resource "aws_ebs_encryption_by_default" "ebs_def" {
#  enabled = true
#}
#resource "aws_ebs_default_kms_key" "key_def" {
#  key_arn = "${var.kms_key_arn}"
#}

### Add if additional block volumes required or different size for root volume required. Else default root size is attached   


#resource "aws_volume_attachment" "ebs_att" {
 # device_name = "/dev/sdh"
  #volume_id   = "${aws_ebs_volume.ebs_id.id}"
  #instance_id = "${aws_instance.ec2_instance.id}"
#}


#resource "aws_ebs_volume" "ebs_id" {
 # availability_zone = "${var.avb_zone}"
  #size              = 30
  #type = "gp2"
  #depends_on =["aws_ebs_encryption_by_default.ebs_def","aws_ebs_default_kms_key.key_def"]
#}
