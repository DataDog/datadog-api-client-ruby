# DatadogAPIClient::V1::DashboardList

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**author** | [**Creator**](Creator.md) |  | [optional] 
**created** | **DateTime** | Date of creation of the dashboard list. | [optional] [readonly] 
**dashboard_count** | **Integer** | The number of dashboards in the list. | [optional] [readonly] 
**id** | **Integer** | The ID of the dashboard list. | [optional] [readonly] 
**is_favorite** | **Boolean** | Whether or not the list is in the favorites. | [optional] [readonly] 
**modified** | **DateTime** | Date of last edition of the dashboard list. | [optional] [readonly] 
**name** | **String** | The name of the dashboard list. | 
**type** | **String** | The type of dashboard list. | [optional] [readonly] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::DashboardList.new(author: null,
                                 created: null,
                                 dashboard_count: null,
                                 id: null,
                                 is_favorite: null,
                                 modified: null,
                                 name: My Dashboard,
                                 type: manual_dashboard_list)
```


