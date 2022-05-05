# EC2 Variables
variable "avb_zone" {
	default = "us-east-1a"
	}
variable "subnet_id" {
	default = "subnet-04d7cfa30f5a983cf"
	}
variable "ec2_count" {
	default = "1"
	}
#variable "ec2_name" {
#	default = "Test-Server"
#	}
variable "key_name" {
	default = "key-crm-pr-euwe01-01"
	}
variable "kms_key_arn" {
	default = "arn:aws:kms:eu-west-1:770814319326:key/f49ed153-72d7-40a2-8961-9def54257059"
	}

variable "default_tags" {
  #type = map

  default = {
	ApplicationAcronym	= "test"
  }
}

variable "ec2_name" {
	default = "PWPR25004"
	}
variable "ami_id" {
	default = "ami-0022f774911c1d690"
	}
variable "instance_type" {
	default = "t2.micro"
	}
variable "sg_ids" {
	default = ["sg-04e240c021fb3b1c0"]
	}
	

