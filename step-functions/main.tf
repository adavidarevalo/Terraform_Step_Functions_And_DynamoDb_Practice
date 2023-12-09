module "DynamoDn_module" {
  source                   = "../modules/database/dynamodb"
  DYNAMO_DB                = var.DYNAMO_DB
  DYNAMO_ENV               = var.DYNAMO_ENV
  DYNAMO_DB_HASH_KEY       = var.DYNAMO_DB_HASH_KEY
  DYNAMO_DB_RANGE_KEY      = var.DYNAMO_DB_RANGE_KEY
  DYNAMO_DB_READ_CAPACITY  = var.DYNAMO_DB_READ_CAPACITY
  DYNAMO_DB_WRITE_CAPACITY = var.DYNAMO_DB_WRITE_CAPACITY
  DYNAMO_DB_BILLING_MODE   = var.DYNAMO_DB_BILLING_MODE
  DYNAMO_DB_HASH_KEY_TYPE  = var.DYNAMO_DB_HASH_KEY_TYPE
  DYNAMO_DB_RANGE_KEY_TYPE = var.DYNAMO_DB_RANGE_KEY_TYPE
}

module "state_machine" {
  source             = "../modules/aws/app_integration/step_functions"
  PROJECT_NAME       = var.PROJECT_NAME
  STEP_FUNCTION_NAME = var.STEP_FUNCTION_NAME

  LAMBDA_REGION = var.LAMBDA_REGION

  AWS_ACCOUNT = var.AWS_ACCOUNT

  SOURCE_PATH                         = var.SOURCE_PATH
  LAMBDA_CREATE_REPOSITORY            = var.LAMBDA_CREATE_REPOSITORY
  LAMBDA1_HANDLER                     = var.LAMBDA1_HANDLER
  LAMBDA1_RUNTIME                     = var.LAMBDA1_RUNTIME
  LAMBDA_INIT_REPOSITORY              = var.LAMBDA_INIT_REPOSITORY
  LAMBDA2_HANDLER                     = var.LAMBDA2_HANDLER
  LAMBDA2_RUNTIME                     = var.LAMBDA2_RUNTIME
  LAMBDA_MODIFY_REPOSITORY            = var.LAMBDA_MODIFY_REPOSITORY
  LAMBDA3_HANDLER                     = var.LAMBDA3_HANDLER
  LAMBDA3_RUNTIME                     = var.LAMBDA3_RUNTIME
  LAMBDA_EXECUTE_PIPELINE             = var.LAMBDA_EXECUTE_PIPELINE
  LAMBDA4_HANDLER                     = var.LAMBDA4_HANDLER
  LAMBDA4_RUNTIME                     = var.LAMBDA4_RUNTIME
  LAMBDA_VALIDATE_CAPACITY_REPOSITORY = var.LAMBDA_VALIDATE_CAPACITY_REPOSITORY
  LAMBDA5_HANDLER                     = var.LAMBDA5_HANDLER
  LAMBDA5_RUNTIME                     = var.LAMBDA5_RUNTIME

}

# resource "aws_iam_role" "step_functions_role" {
#   name = "${var.STEP_FUNCTION_NAME}_role"
#   assume_role_policy = <<EOF
#   {
#     "Version": "2012-10-17",
#     "Statement": [
#       {
#         "Effect": "Allow",
#         "Principal": {
#           "Service": "states.amazonaws.com",
#           "Sid": "StepFunctionAssumeRole"
#           }
#           ]
#           }
#           EOF
# }

# resource "aws_iam_role_policy" "step_functions_policy" {
#   name = "${var.STEP_FUNCTION_NAME}_policy"
#   role = aws_iam_role.step_functions_role.id
#   policy = <<EOF
#   {
#     "Version": "2012-10-17",
#     "Statement": [
#       {
#         "Effect": "Allow",
#         "Action": [
#           "lambda:InvokeFunction"
#           ],
#           "Resource":[
#             "${module.upload_lambda.arn_lambda_1}",
#             "${module.upload_lambda.arn_lambda_2}",
#             "${module.upload_lambda.arn_lambda_3}",
#             "${module.upload_lambda.arn_lambda_4}",
#             "${module.upload_lambda.arn_lambda_5}"
#           ]
#           }
#           ]
#           }
#           EOF
# }