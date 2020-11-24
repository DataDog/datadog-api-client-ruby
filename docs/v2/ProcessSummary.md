# DatadogAPIClient::V2::ProcessSummary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attributes** | [**ProcessSummaryAttributes**](ProcessSummaryAttributes.md) |  | [optional] 
**id** | **String** | Process ID. | [optional] 
**type** | [**ProcessSummaryType**](ProcessSummaryType.md) |  | [optional] [default to &#39;process&#39;]

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::ProcessSummary.new(attributes: null,
                                 id: null,
                                 type: null)
```


