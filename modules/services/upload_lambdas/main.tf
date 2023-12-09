module "roles_and_policys" {
  source = "../../security/policy_roles"

  LAMBDA_CREATE_REPOSITORY            = var.LAMBDA_CREATE_REPOSITORY
  LAMBDA_INIT_REPOSITORY              = var.LAMBDA_INIT_REPOSITORY
  LAMBDA_MODIFY_REPOSITORY            = var.LAMBDA_MODIFY_REPOSITORY
  LAMBDA_EXECUTE_PIPELINE             = var.LAMBDA_EXECUTE_PIPELINE
  LAMBDA_VALIDATE_CAPACITY_REPOSITORY = var.LAMBDA_VALIDATE_CAPACITY_REPOSITORY
}

//Lambda1
data "archive_file" "lambda_zip_file_1" {
  output_path = "${var.SOURCE_PATH}${var.PROJECT_NAME}/zip/${var.LAMBDA_CREATE_REPOSITORY}.zip"
  source_dir  = "${var.SOURCE_PATH}${var.PROJECT_NAME}/${var.LAMBDA_CREATE_REPOSITORY}"
  excludes    = ["__init__.py", "*.pyc"]
  type        = "zip"
}

resource "aws_lambda_function" "LAMBDA_CREATE_REPOSITORY" {
  filename         = data.archive_file.lambda_zip_file_1.output_path
  function_name    = var.LAMBDA_CREATE_REPOSITORY
  role             = module.roles_and_policys.assume_role
  source_code_hash = data.archive_file.lambda_zip_file_1.output_base64sha256
  handler          = var.LAMBDA1_HANDLER
  runtime          = var.LAMBDA1_RUNTIME
  timeout          = 300
  lifecycle {
    create_before_destroy = true
  }
}

//Lambda2
data "archive_file" "lambda_zip_file_2" {
  output_path = "${var.SOURCE_PATH}${var.PROJECT_NAME}/zip/${var.LAMBDA_INIT_REPOSITORY}.zip"
  source_dir  = "${var.SOURCE_PATH}${var.PROJECT_NAME}/${var.LAMBDA_INIT_REPOSITORY}"
  excludes    = ["__init__.py", "*.pyc"]
  type        = "zip"
}

resource "aws_lambda_function" "LAMBDA_INIT_REPOSITORY" {
  filename         = data.archive_file.lambda_zip_file_2.output_path
  function_name    = var.LAMBDA_INIT_REPOSITORY
  role             = module.roles_and_policys.assume_role
  source_code_hash = data.archive_file.lambda_zip_file_2.output_base64sha256
  handler          = var.LAMBDA2_HANDLER
  runtime          = var.LAMBDA2_RUNTIME
  timeout          = 300
  lifecycle {
    create_before_destroy = true
  }
}

//lambda3
data "archive_file" "lambda_zip_file_3" {
  output_path = "${var.SOURCE_PATH}${var.PROJECT_NAME}/zip/${var.LAMBDA_MODIFY_REPOSITORY}.zip"
  source_dir  = "${var.SOURCE_PATH}${var.PROJECT_NAME}/${var.LAMBDA_MODIFY_REPOSITORY}"
  excludes    = ["__init__.py", "*.pyc"]
  type        = "zip"
}

resource "aws_lambda_function" "LAMBDA_MODIFY_REPOSITORY" {
  filename         = data.archive_file.lambda_zip_file_3.output_path
  function_name    = var.LAMBDA_MODIFY_REPOSITORY
  role             = module.roles_and_policys.assume_role
  source_code_hash = data.archive_file.lambda_zip_file_3.output_base64sha256
  handler          = var.LAMBDA3_HANDLER
  runtime          = var.LAMBDA3_RUNTIME
  timeout          = 300
  lifecycle {
    create_before_destroy = true
  }
}

//lambda4
data "archive_file" "lambda_zip_file_4" {
  output_path = "${var.SOURCE_PATH}${var.PROJECT_NAME}/zip/${var.LAMBDA_EXECUTE_PIPELINE}.zip"
  source_dir  = "${var.SOURCE_PATH}${var.PROJECT_NAME}/${var.LAMBDA_EXECUTE_PIPELINE}"
  excludes    = ["__init__.py", "*.pyc"]
  type        = "zip"
}

resource "aws_lambda_function" "LAMBDA_EXECUTE_PIPELINE" {
  filename         = data.archive_file.lambda_zip_file_4.output_path
  function_name    = var.LAMBDA_EXECUTE_PIPELINE
  role             = module.roles_and_policys.assume_role
  source_code_hash = data.archive_file.lambda_zip_file_4.output_base64sha256
  handler          = var.LAMBDA4_HANDLER
  runtime          = var.LAMBDA4_RUNTIME
  timeout          = 300
  lifecycle {
    create_before_destroy = true
  }
}

//lambda5
data "archive_file" "lambda_zip_file_5" {
  output_path = "${var.SOURCE_PATH}${var.PROJECT_NAME}/zip/${var.LAMBDA_VALIDATE_CAPACITY_REPOSITORY}.zip"
  source_dir  = "${var.SOURCE_PATH}${var.PROJECT_NAME}/${var.LAMBDA_VALIDATE_CAPACITY_REPOSITORY}"
  excludes    = ["__init__.py", "*.pyc"]
  type        = "zip"
}

resource "aws_lambda_function" "LAMBDA_VALIDATE_CAPACITY_REPOSITORY" {
  filename         = data.archive_file.lambda_zip_file_5.output_path
  function_name    = var.LAMBDA_VALIDATE_CAPACITY_REPOSITORY
  role             = module.roles_and_policys.assume_role
  source_code_hash = data.archive_file.lambda_zip_file_5.output_base64sha256
  handler          = var.LAMBDA5_HANDLER
  runtime          = var.LAMBDA5_RUNTIME
  timeout          = 300
  lifecycle {
    create_before_destroy = true
  }
}


