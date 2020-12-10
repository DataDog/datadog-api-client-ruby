# DatadogAPIClient::V1::AWSLogsListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Your AWS Account ID without dashes. | [optional] |
| **lambdas** | [**Array&lt;AWSLogsListResponseLambdas&gt;**](AWSLogsListResponseLambdas.md) | List of ARNs configured in your Datadog account. | [optional] |
| **services** | **Array&lt;String&gt;** | Array of services IDs. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::AWSLogsListResponse.new(
  account_id: 1234567,
  lambdas: [{&quot;arn&quot;:&quot;arn:aws:lambda:us-east-1:1234567:function:LogsCollectionAPITest&quot;}],
  services: [&quot;s3&quot;,&quot;elb&quot;,&quot;elbv2&quot;,&quot;cloudfront&quot;,&quot;redshift&quot;,&quot;lambda&quot;]
)
```

