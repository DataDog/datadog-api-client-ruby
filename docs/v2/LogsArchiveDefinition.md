# DatadogAPIClient::V2::LogsArchiveDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attributes** | [**LogsArchiveAttributes**](LogsArchiveAttributes.md) |  | [optional] 
**id** | **String** | The archive ID. | [optional] [readonly] 
**type** | **String** | The type of the resource. The value should always be archives. | [readonly] [default to &#39;archives&#39;]

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::LogsArchiveDefinition.new(attributes: null,
                                 id: a2zcMylnM4OCHpYusxIi3g,
                                 type: archives)
```


