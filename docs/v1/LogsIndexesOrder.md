# DatadogAPIClient::V1::LogsIndexesOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index_names** | **Array&lt;String&gt;** | Array of strings identifying by their name(s) the index(es) of your organization. Logs are tested against the query filter of each index one by one, following the order of the array. Logs are eventually stored in the first matching index. |  |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsIndexesOrder.new(
  index_names: [&quot;main&quot;,&quot;payments&quot;,&quot;web&quot;]
)
```

