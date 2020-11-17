# DatadogAPIClient::V2::IncidentCreateData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attributes** | [**IncidentCreateAttributes**](IncidentCreateAttributes.md) |  | 
**relationships** | [**IncidentCreateRelationships**](IncidentCreateRelationships.md) |  | [optional] 
**type** | [**IncidentType**](IncidentType.md) |  | [default to &#39;incidents&#39;]

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::IncidentCreateData.new(attributes: null,
                                 relationships: null,
                                 type: null)
```


