# DatadogAPIClient::V1::MonitorState

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**groups** | [**Hash&lt;String, MonitorStateGroup&gt;**](MonitorStateGroup.md) | Dictionary where the keys are groups (comma separated lists of tags) and the values are the list of groups your monitor is broken down on. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::MonitorState.new(groups: null)
```


