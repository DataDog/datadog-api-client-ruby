# DatadogAPIClient::V1::HostMapWidgetDefinition

## Properties

| Name                | Type                                                                      | Description                                          | Notes                          |
| ------------------- | ------------------------------------------------------------------------- | ---------------------------------------------------- | ------------------------------ |
| **custom_links**    | [**Array&lt;WidgetCustomLink&gt;**](WidgetCustomLink.md)                  | List of custom links.                                | [optional]                     |
| **group**           | **Array&lt;String&gt;**                                                   | List of tag prefixes to group by.                    | [optional]                     |
| **no_group_hosts**  | **Boolean**                                                               | Whether to show the hosts that don’t fit in a group. | [optional]                     |
| **no_metric_hosts** | **Boolean**                                                               | Whether to show the hosts with no metrics.           | [optional]                     |
| **node_type**       | [**WidgetNodeType**](WidgetNodeType.md)                                   |                                                      | [optional]                     |
| **notes**           | **String**                                                                | Notes on the title.                                  | [optional]                     |
| **requests**        | [**HostMapWidgetDefinitionRequests**](HostMapWidgetDefinitionRequests.md) |                                                      |                                |
| **scope**           | **Array&lt;String&gt;**                                                   | List of tags used to filter the map.                 | [optional]                     |
| **style**           | [**HostMapWidgetDefinitionStyle**](HostMapWidgetDefinitionStyle.md)       |                                                      | [optional]                     |
| **title**           | **String**                                                                | Title of the widget.                                 | [optional]                     |
| **title_align**     | [**WidgetTextAlign**](WidgetTextAlign.md)                                 |                                                      | [optional]                     |
| **title_size**      | **String**                                                                | Size of the title.                                   | [optional]                     |
| **type**            | [**HostMapWidgetDefinitionType**](HostMapWidgetDefinitionType.md)         |                                                      | [default to &#39;hostmap&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::HostMapWidgetDefinition.new(
  custom_links: null,
  group: null,
  no_group_hosts: null,
  no_metric_hosts: null,
  node_type: null,
  notes: null,
  requests: null,
  scope: null,
  style: null,
  title: null,
  title_align: null,
  title_size: null,
  type: null
)
```
