variable "aws_region" {
    default = "us-west-2a"
    description = "The region in which the EKS cluster will be deployed."
    type = string
}

variable "sp_client_secret" {
    type = string
}
