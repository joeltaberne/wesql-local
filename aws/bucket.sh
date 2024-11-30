#!/usr/bin/env bash
awslocal configure set default.s3.addressing_style auto
awslocal s3api create-bucket --bucket wesql-storage --region us-east-1