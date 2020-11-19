# DatadogAPIClient::V1::UsageAttributionBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**month** | **Time** | Datetime in ISO-8601 format, UTC, precise to month: [YYYY-MM]. | [optional] 
**public_id** | **String** | The organization public ID. | [optional] 
**tags** | **Hash&lt;String, Array&lt;String&gt;&gt;** | Usage Summary by tag name. | [optional] 
**updated_at** | **String** | Shows the the most recent hour in the current months for all organizations for which all usages were calculated. | [optional] 
**values** | [**UsageAttributionValues**](UsageAttributionValues.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::UsageAttributionBody.new(month: null,
                                 public_id: null,
                                 tags: null,
                                 updated_at: null,
                                 values: null)
```


