import boto3
import time

def lambda_handler(event, context):
    capacity = event['capacity']
    insert_log(capacity)

    response = {"capacity": capacity}

    return response

def insert_log(capacity):
    time.ctime()
    identify = "capacidad-" + capacity
    dynamodb = boto3.resource('dynamodb')
    table = dynamodb.Table('test_step_functions_dev')
    response = table.put_item(
        TableName='test_step_functions_dev',
        Item={
            'id': identify,
            'sequence': 4,
            "notes": "Ejecutar Pipeline",
            "time": time.ctime()
        }
    )
    return response