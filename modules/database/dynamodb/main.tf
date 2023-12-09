resource "aws_dynamodb_table" "Dynamo_db" {
  name           = "${var.DYNAMO_DB}_${var.DYNAMO_ENV}"
  hash_key       = var.DYNAMO_DB_HASH_KEY
  range_key      = var.DYNAMO_DB_RANGE_KEY
  read_capacity  = var.DYNAMO_DB_READ_CAPACITY
  write_capacity = var.DYNAMO_DB_WRITE_CAPACITY
  billing_mode   = var.DYNAMO_DB_BILLING_MODE
  attribute {
    name = var.DYNAMO_DB_HASH_KEY
    type = var.DYNAMO_DB_HASH_KEY_TYPE
  }

  attribute {
    name = var.DYNAMO_DB_RANGE_KEY
    type = var.DYNAMO_DB_RANGE_KEY_TYPE
  }
  tags = {
    Name = "${var.DYNAMO_DB}_${var.DYNAMO_ENV}"
    ENV  = var.DYNAMO_ENV
  }
}