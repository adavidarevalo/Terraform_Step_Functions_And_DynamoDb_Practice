variable "AWS_REGION" {
  default = "us-east-2"
}

variable "PROJECT_NAME" {}

variable "STEP_FUNCTION_NAME" {}

variable "LAMBDA_REGION" {}

variable "AWS_ACCOUNT" {}

variable "SOURCE_PATH" {}

# firts lambda variables
variable "LAMBDA_CREATE_REPOSITORY" {}
variable "LAMBDA1_HANDLER" {}
variable "LAMBDA1_RUNTIME" {}

# second lambda variables
variable "LAMBDA_INIT_REPOSITORY" {}
variable "LAMBDA2_HANDLER" {}
variable "LAMBDA2_RUNTIME" {}

# third lambda variables
variable "LAMBDA_MODIFY_REPOSITORY" {}
variable "LAMBDA3_HANDLER" {}
variable "LAMBDA3_RUNTIME" {}

# fourth lambda variables
variable "LAMBDA_EXECUTE_PIPELINE" {}
variable "LAMBDA4_HANDLER" {}
variable "LAMBDA4_RUNTIME" {}


# fifth lambda variables
variable "LAMBDA_VALIDATE_CAPACITY_REPOSITORY" {}
variable "LAMBDA5_HANDLER" {}
variable "LAMBDA5_RUNTIME" {}

// DynamoDB variables
variable "DYNAMO_DB" {
  type = string
}

variable "DYNAMO_ENV" {
  type = string
}

variable "DYNAMO_DB_HASH_KEY" {
  type = string
}

variable "DYNAMO_DB_RANGE_KEY" {
  type = string
}

variable "DYNAMO_DB_READ_CAPACITY" {
  type = number
}

variable "DYNAMO_DB_WRITE_CAPACITY" {
  type = number
}

variable "DYNAMO_DB_BILLING_MODE" {
  type = string
}

variable "DYNAMO_DB_HASH_KEY_TYPE" {
  type = string
}

variable "DYNAMO_DB_RANGE_KEY_TYPE" {
  type = string
}

