# DatadogAPIClient::V1::MonitorUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | Timestamp of the monitor creation. | [optional] [readonly] 
**creator** | [**Creator**](Creator.md) |  | [optional] 
**deleted** | **DateTime** | Whether or not the monitor is deleted. (Always &#x60;null&#x60;) | [optional] [readonly] 
**id** | **Integer** | ID of this monitor. | [optional] [readonly] 
**message** | **String** | A message to include with notifications for this monitor. | [optional] 
**modified** | **DateTime** | Last timestamp when the monitor was edited. | [optional] [readonly] 
**multi** | **Boolean** | Whether or not the monitor is broken down on different groups. | [optional] [readonly] 
**name** | **String** | The monitor name. | [optional] 
**options** | [**MonitorOptions**](MonitorOptions.md) |  | [optional] 
**overall_state** | [**MonitorOverallStates**](MonitorOverallStates.md) |  | [optional] 
**query** | **String** | The monitor query. | [optional] 
**state** | [**MonitorState**](MonitorState.md) |  | [optional] 
**tags** | **Array&lt;String&gt;** | Tags associated to your monitor. | [optional] 
**type** | [**MonitorType**](MonitorType.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::MonitorUpdateRequest.new(created: null,
                                 creator: null,
                                 deleted: null,
                                 id: null,
                                 message: null,
                                 modified: null,
                                 multi: null,
                                 name: null,
                                 options: null,
                                 overall_state: null,
                                 query: null,
                                 state: null,
                                 tags: null,
                                 type: null)
```


