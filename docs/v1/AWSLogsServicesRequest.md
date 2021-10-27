# DatadogAPIClient::V1::AWSLogsServicesRequest

## Properties

| Name           | Type                    | Description                                                                                                                                                     | Notes |
| -------------- | ----------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----- |
| **account_id** | **String**              | Your AWS Account ID without dashes.                                                                                                                             |       |
| **services**   | **Array&lt;String&gt;** | Array of services IDs set to enable automatic log collection. Discover the list of available services with the get list of AWS log ready services API endpoint. |       |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::AWSLogsServicesRequest.new(
  account_id: 1234567,
  services: [&quot;s3&quot;,&quot;elb&quot;,&quot;elbv2&quot;,&quot;cloudfront&quot;,&quot;redshift&quot;,&quot;lambda&quot;]
)
```
