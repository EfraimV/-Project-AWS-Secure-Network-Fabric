import boto3  

def detect_lateral_movement():  
    client = boto3.client('cloudwatch')  
    logs = client.filter_log_events(  
        logGroupName='vpc-flow-logs',  
        filterPattern='[version, account, eni, srcaddr != 10.0.0.0/8, dstaddr = 10.0.0.0/8]'  
    )  
    for event in logs['events']:  
        alert(f"Lateral movement detected: {event['message']}")  
