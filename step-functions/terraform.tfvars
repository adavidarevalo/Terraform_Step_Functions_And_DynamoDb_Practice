# Dynamo DB Variables
DYNAMO_DB                = "test_step_functions"
DYNAMO_ENV               = "dev"
DYNAMO_DB_HASH_KEY       = "id"
DYNAMO_DB_RANGE_KEY      = "sequence"
DYNAMO_DB_READ_CAPACITY  = 5
DYNAMO_DB_WRITE_CAPACITY = 5
DYNAMO_DB_BILLING_MODE   = "PROVISIONED"
DYNAMO_DB_HASH_KEY_TYPE  = "S"
DYNAMO_DB_RANGE_KEY_TYPE = "N"

# State Machine

LAMBDA_REGION      = "us-east-2"
AWS_ACCOUNT        = "946974073227"
STEP_FUNCTION_NAME = "Test_Step_Functions"
SOURCE_PATH        = "./lambdas-"
PROJECT_NAME       = "test"

LAMBDA_CREATE_REPOSITORY = "create_repository"
LAMBDA1_HANDLER          = "create_repository.lambda_handler"
LAMBDA1_RUNTIME          = "python3.8"

LAMBDA_INIT_REPOSITORY = "init_repo"
LAMBDA2_HANDLER        = "init_repo.lambda_handler"
LAMBDA2_RUNTIME        = "python3.8"

LAMBDA_MODIFY_REPOSITORY = "modify_repo"
LAMBDA3_HANDLER          = "modify_repo.lambda_handler"
LAMBDA3_RUNTIME          = "python3.8"

LAMBDA_EXECUTE_PIPELINE = "execute_pipeline"
LAMBDA4_HANDLER         = "execute_pipeline.lambda_handler"
LAMBDA4_RUNTIME         = "python3.8"

LAMBDA_VALIDATE_CAPACITY_REPOSITORY = "validate_capacity"
LAMBDA5_HANDLER                     = "validate_capacity.lambda_handler"
LAMBDA5_RUNTIME                     = "python3.8"
