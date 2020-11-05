# DatadogAPIClient::V1::UsageSpecifiedCustomReportsData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attributes** | [**UsageSpecifiedCustomReportsAttributes**](UsageSpecifiedCustomReportsAttributes.md) |  | [optional] 
**id** | **String** | The date for specified custom reports. | [optional] 
**type** | [**UsageReportsType**](UsageReportsType.md) |  | [optional] [default to &#39;reports&#39;]

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::UsageSpecifiedCustomReportsData.new(attributes: null,
                                 id: null,
                                 type: null)
```


