//IAM Policy for the lambda

data "aws_iam_policy_document" "lambda_policy" {
    version = "2012-10-17"
    statement {
    actions = ["sts:AssumeRole"]
    effect = "Allow"
    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }

}

resource "aws_iam_role" "lambda_assume_role" {
    name = "${var.LAMBDA_CREATE_REPOSITORY}_assume_role"
    assume_role_policy = data.aws_iam_policy_document.lambda_policy.json
    lifecycle {
        create_before_destroy = true
    }
}

//DynamoDB policy
data "aws_iam_policy_document" "dynamo_policy" {
    version = "2012-10-17"
    statement {
    actions = ["dynamodb:*"]
    effect = "Allow"
    resources = ["*"]
  }
}

resource "aws_iam_policy" "policy" {
    name = "dynamoDb_policy"
    description = "IAM policy for lambda"
    policy = data.aws_iam_policy_document.dynamo_policy.json
}

data "aws_iam_policy_document" "step_funtions_policy" {
    version = "2012-10-17"
    statement {
    actions = ["states:*"]
    effect = "Allow"
    resources = ["*"]
  }
}

resource "aws_iam_policy" "step_funtions_policy" {
    name = "step_funtions_policy"
    description = "IAM policy for lambda"
    policy = data.aws_iam_policy_document.step_funtions_policy.json  
}

resource "aws_iam_role_policy_attachment" "policy_attachment" {
    role = aws_iam_role.lambda_assume_role.name
    policy_arn = aws_iam_policy.policy.arn
}
