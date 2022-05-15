#!/usr/bin/bash
# deploys resume to the s3 bucket

mkdir ./tmp
if [ -f "./tmp/resume.zip" ]; then
    rm ./tmp/resume.zip
fi

# zip the lambda functions
zip -r ./tmp/resume.zip ./Matthew_Spahr_Resume.pdf

aws s3 cp ./tmp/resume.zip s3://matthew-spahr-resume-bucket/resume.zip
aws s3 ls