# DatadogAPIClient::V2::DashboardListItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**author** | [**Creator**](Creator.md) |  | [optional] 
**created** | **Time** | Date of creation of the dashboard. | [optional] [readonly] 
**icon** | **String** | URL to the icon of the dashboard. | [optional] [readonly] 
**id** | **String** | ID of the dashboard. | 
**is_favorite** | **Boolean** | Whether or not the dashboard is in the favorites. | [optional] [readonly] 
**is_read_only** | **Boolean** | Whether or not the dashboard is read only. | [optional] [readonly] 
**is_shared** | **Boolean** | Whether the dashboard is publicly shared or not. | [optional] [readonly] 
**modified** | **Time** | Date of last edition of the dashboard. | [optional] [readonly] 
**popularity** | **Integer** | Popularity of the dashboard. | [optional] [readonly] 
**title** | **String** | Title of the dashboard. | [optional] [readonly] 
**type** | [**DashboardType**](DashboardType.md) |  | 
**url** | **String** | URL path to the dashboard. | [optional] [readonly] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::DashboardListItem.new(author: null,
                                 created: null,
                                 icon: null,
                                 id: q5j-nti-fv6,
                                 is_favorite: null,
                                 is_read_only: null,
                                 is_shared: null,
                                 modified: null,
                                 popularity: null,
                                 title: null,
                                 type: null,
                                 url: null)
```


