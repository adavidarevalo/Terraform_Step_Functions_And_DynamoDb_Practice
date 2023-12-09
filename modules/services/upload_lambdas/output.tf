output "arn_lambda_1" {
  value = aws_lambda_function.LAMBDA_CREATE_REPOSITORY.arn
}

output "arn_lambda_2" {
    value = aws_lambda_function.LAMBDA_INIT_REPOSITORY.arn
}

output "arn_lambda_3" {
    value = aws_lambda_function.LAMBDA_MODIFY_REPOSITORY.arn
}

output "arn_lambda_4" {
    value = aws_lambda_function.LAMBDA_EXECUTE_PIPELINE.arn
}

output "arn_lambda_5" {
    value = aws_lambda_function.LAMBDA_VALIDATE_CAPACITY_REPOSITORY.arn
}