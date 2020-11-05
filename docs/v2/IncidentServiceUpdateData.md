# DatadogAPIClient::V2::IncidentServiceUpdateData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attributes** | [**IncidentServiceUpdateAttributes**](IncidentServiceUpdateAttributes.md) |  | [optional] 
**id** | **String** | The incident service&#39;s ID. | 
**relationships** | [**IncidentServiceRelationships**](IncidentServiceRelationships.md) |  | [optional] 
**type** | [**IncidentServiceType**](IncidentServiceType.md) |  | [default to &#39;services&#39;]

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::IncidentServiceUpdateData.new(attributes: null,
                                 id: 00000000-0000-0000-0000-000000000000,
                                 relationships: null,
                                 type: null)
```


