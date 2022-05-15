# This file handles all the S3 bucket creation for the project

resource "aws_s3_bucket" "source-bucket" {
    bucket = var.resume-bucket
    acl    = "private"

    
    tags = {
        Name        = var.resume-bucket
        Project     = var.project
    }
} 
