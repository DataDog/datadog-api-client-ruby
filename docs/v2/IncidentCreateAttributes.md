# DatadogAPIClient::V2::IncidentCreateAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_impacted** | **Boolean** | A flag indicating whether the incident caused customer impact. | 
**fields** | [**Hash&lt;String, IncidentFieldAttributes&gt;**](IncidentFieldAttributes.md) | A condensed view of the user-defined fields for which to create initial selections. | [optional] 
**initial_timeline_cells** | [**Array&lt;IncidentTimelineCellCreateAttributes&gt;**](IncidentTimelineCellCreateAttributes.md) | An array of initial timeline cells to be placed at the beginning of the incident timeline. | [optional] 
**notification_handles** | **Array&lt;String&gt;** | Notification handles that will be notified of the incident at creation. | [optional] 
**title** | **String** | The title of the incident, which summarizes what happened. | 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::IncidentCreateAttributes.new(customer_impacted: false,
                                 fields: {&quot;severity&quot;:{&quot;type&quot;:&quot;dropdown&quot;,&quot;value&quot;:&quot;SEV-5&quot;}},
                                 initial_timeline_cells: null,
                                 notification_handles: null,
                                 title: A test incident title)
```


