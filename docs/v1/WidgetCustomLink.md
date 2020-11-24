# DatadogAPIClient::V1::WidgetCustomLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | The label for the custom link URL. Keep the label short and descriptive. Use metrics and tags as variables. |  |
| **link** | **String** | The URL of the custom link. URL must include &#x60;http&#x60; or &#x60;https&#x60;. A relative URL must start with &#x60;/&#x60;. |  |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::WidgetCustomLink.new(
  label: Search logs for {{host}},
  link: https://app.datadoghq.com/logs?query&#x3D;{{host}}
)
```

