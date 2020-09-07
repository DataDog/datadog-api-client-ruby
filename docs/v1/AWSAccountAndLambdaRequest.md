# DatadogAPIClient::V1::AWSAccountAndLambdaRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | Your AWS Account ID without dashes. | 
**lambda_arn** | **String** | ARN of the Datadog Lambda created during the Datadog-Amazon Web services Log collection setup. | 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::AWSAccountAndLambdaRequest.new(account_id: 1234567,
                                 lambda_arn: arn:aws:lambda:us-east-1:1234567:function:LogsCollectionAPITest)
```


