terraform {
  backend "s3"{
      bucket = "sharnithabucket"
          key="vpc/terraform.tfstate"
          region = "us-west-1"
      }

}