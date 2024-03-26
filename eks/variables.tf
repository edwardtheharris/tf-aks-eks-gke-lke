variable "aws_region" {
    default = "us-west-2"
    description = "The region in which the EKS cluster will be deployed."
    type = string
}

variable "AWS_ACCESS_KEY_ID" {
    default = ""
    description = "Access key ID"
    type = string
}

variable "AWS_SECRET_ACCESS_KEY" {
    default = ""
    description = "AWS secret access key"
}
