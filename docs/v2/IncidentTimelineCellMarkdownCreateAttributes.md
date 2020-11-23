# DatadogAPIClient::V2::IncidentTimelineCellMarkdownCreateAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cell_type** | [**IncidentTimelineCellMarkdownContentType**](IncidentTimelineCellMarkdownContentType.md) |  | [default to &#39;markdown&#39;]
**content** | [**IncidentTimelineCellMarkdownCreateAttributesContent**](IncidentTimelineCellMarkdownCreateAttributesContent.md) |  | 
**important** | **Boolean** | A flag indicating whether the timeline cell is important and should be highlighted. | [optional] [default to false]

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::IncidentTimelineCellMarkdownCreateAttributes.new(cell_type: null,
                                 content: null,
                                 important: false)
```


