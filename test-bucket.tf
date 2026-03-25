terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket  = "jenkins-891377135193"
    key     = "jenkins/new-jenkins-s3-test.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_object" "armageddon_pass_png" {
  bucket       = "jenkins-891377135193"
  key          = "Armageddon_Pass.png"
  source       = "./Armageddon_Pass.png"
  etag         = filemd5("./Armageddon_Pass.png")
  content_type = "image/png"
}

resource "aws_s3_object" "AWS_2025--WEEK_29_3-24_ASSIGNMENT_pdf" {
  bucket       = "jenkins-891377135193"
  key          = "AWS_2025--WEEK_29_3-24_ASSIGNMENT.pdf"
  source       = "./AWS_2025--WEEK_29_3-24_ASSIGNMENT.pdf"
  etag         = filemd5("./AWS_2025--WEEK_29_3-24_ASSIGNMENT.pdf")
  content_type = "text/plain"
}