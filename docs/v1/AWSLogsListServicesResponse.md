# DatadogAPIClient::V1::AWSLogsListServicesResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Key value in returned object. | [optional] 
**label** | **String** | Name of service available for configuration with Datadog logs. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::AWSLogsListServicesResponse.new(id: s3,
                                 label: S3 Access Logs)
```


