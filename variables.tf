variable "api_gateway_id" {
  type = string
}

variable "route_key" {
  type = string
}


variable "integration_type" {
  type    = string
  default = "AWS_PROXY"
}

variable "integration_subtype" {
  type        = string
  default     = null
  description = "Supported only for AWS_PROXY integrations for the following services: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html"
}

variable "integration_description" {
  type    = string
  default = ""
}

variable "integration_uri" {
  type = string
}

variable "connection_type" {
  type    = string
  default = "INTERNET"
}

variable "payload_format_version" {
  type    = string
  default = "2.0"
}

variable "authorization_type" {
  type        = string
  default     = "NONE"
  description = "JWT/IAM/NONE"
}

variable "authorizer_id" {
  type    = string
  default = null
}