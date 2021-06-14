# DatadogAPIClient::V1::Dashboard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **author_handle** | **String** | Identifier of the dashboard author. | [optional][readonly] |
| **created_at** | **Time** | Creation date of the dashboard. | [optional][readonly] |
| **description** | **String** | Description of the dashboard. | [optional] |
| **id** | **String** | ID of the dashboard. | [optional][readonly] |
| **is_read_only** | **Boolean** | Whether this dashboard is read-only. If True, only the author and admins can make changes to it. | [optional][default to false] |
| **layout_type** | [**DashboardLayoutType**](DashboardLayoutType.md) |  |  |
| **modified_at** | **Time** | Modification date of the dashboard. | [optional][readonly] |
| **notify_list** | **Array&lt;String&gt;** | List of handles of users to notify when changes are made to this dashboard. | [optional] |
| **reflow_type** | [**DashboardReflowType**](DashboardReflowType.md) |  | [optional] |
| **restricted_roles** | **Array&lt;String&gt;** | A list of role identifiers. Only the author and users associated with at least one of these roles can edit this dashboard. Overrides the &#x60;is_read_only&#x60; property if both are present. **This feature is currently in beta.** | [optional] |
| **template_variable_presets** | [**Array&lt;DashboardTemplateVariablePreset&gt;**](DashboardTemplateVariablePreset.md) | Array of template variables saved views. | [optional] |
| **template_variables** | [**Array&lt;DashboardTemplateVariable&gt;**](DashboardTemplateVariable.md) | List of template variables for this dashboard. | [optional] |
| **title** | **String** | Title of the dashboard. |  |
| **url** | **String** | The URL of the dashboard. | [optional][readonly] |
| **widgets** | [**Array&lt;Widget&gt;**](Widget.md) | List of widgets to display on the dashboard. |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::Dashboard.new(
  author_handle: test@datadoghq.com,
  created_at: null,
  description: null,
  id: 123-abc-456,
  is_read_only: false,
  layout_type: null,
  modified_at: null,
  notify_list: null,
  reflow_type: null,
  restricted_roles: null,
  template_variable_presets: null,
  template_variables: null,
  title: ,
  url: /dashboard/123-abc-456/example-dashboard-title,
  widgets: [{&quot;definition&quot;:{&quot;requests&quot;:{&quot;fill&quot;:{&quot;q&quot;:&quot;system.cpu.user&quot;}},&quot;type&quot;:&quot;hostmap&quot;}}]
)
```

