# DatadogAPIClient::V1::DashboardSummaryDashboards

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **author_handle** | **String** | Identifier of the dashboard author. | [optional] |
| **created_at** | **Time** | Creation date of the dashboard. | [optional] |
| **description** | **String** | Description of the dashboard. | [optional] |
| **id** | **String** | Dashboard identifier. | [optional] |
| **is_read_only** | **Boolean** | Whether this dashboard is read-only. If True, only the author and admins can make changes to it. | [optional] |
| **layout_type** | [**DashboardLayoutType**](DashboardLayoutType.md) |  | [optional] |
| **modified_at** | **Time** | Modification date of the dashboard. | [optional] |
| **title** | **String** | Title of the dashboard. | [optional] |
| **url** | **String** | URL of the dashboard. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::DashboardSummaryDashboards.new(
  author_handle: null,
  created_at: null,
  description: null,
  id: null,
  is_read_only: null,
  layout_type: null,
  modified_at: null,
  title: null,
  url: null
)
```

