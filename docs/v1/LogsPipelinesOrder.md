# DatadogAPIClient::V1::LogsPipelinesOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline_ids** | **Array&lt;String&gt;** | Ordered Array of &#x60;&lt;PIPELINE_ID&gt;&#x60; strings, the order of pipeline IDs in the array define the overall Pipelines order for Datadog. |  |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsPipelinesOrder.new(
  pipeline_ids: [&quot;tags&quot;,&quot;org_ids&quot;,&quot;products&quot;]
)
```

