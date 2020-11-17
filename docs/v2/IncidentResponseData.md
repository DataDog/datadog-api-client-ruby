# DatadogAPIClient::V2::IncidentResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attributes** | [**IncidentResponseAttributes**](IncidentResponseAttributes.md) |  | [optional] 
**id** | **String** | The incident&#39;s ID. | 
**relationships** | [**IncidentResponseRelationships**](IncidentResponseRelationships.md) |  | [optional] 
**type** | [**IncidentType**](IncidentType.md) |  | [default to &#39;incidents&#39;]

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::IncidentResponseData.new(attributes: null,
                                 id: 00000000-0000-0000-0000-000000000000,
                                 relationships: null,
                                 type: null)
```


