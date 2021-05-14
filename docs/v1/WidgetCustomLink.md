# DatadogAPIClient::V1::WidgetCustomLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_hidden** | **Boolean** | The flag for toggling context menu link visibility. | [optional] |
| **label** | **String** | The label for the custom link URL. Keep the label short and descriptive. Use metrics and tags as variables. | [optional] |
| **link** | **String** | The URL of the custom link. URL must include &#x60;http&#x60; or &#x60;https&#x60;. A relative URL must start with &#x60;/&#x60;. | [optional] |
| **override_label** | **String** | The label ID that refers to a context menu link. Can be &#x60;logs&#x60;, &#x60;hosts&#x60;, &#x60;traces&#x60;, &#x60;profiles&#x60;, &#x60;processes&#x60;, &#x60;containers&#x60;, or &#x60;rum&#x60;. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::WidgetCustomLink.new(
  is_hidden: null,
  label: Search logs for {{host}},
  link: https://app.datadoghq.com/logs?query&#x3D;{{host}},
  override_label: logs
)
```

