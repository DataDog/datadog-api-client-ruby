# DatadogAPIClient::V2::ServiceCreateData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attributes** | [**ServiceCreateAttributes**](ServiceCreateAttributes.md) |  | [optional] 
**relationships** | [**ServiceRelationships**](ServiceRelationships.md) |  | [optional] 
**type** | [**ServiceType**](ServiceType.md) |  | [default to &#39;services&#39;]

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::ServiceCreateData.new(attributes: null,
                                 relationships: null,
                                 type: null)
```


