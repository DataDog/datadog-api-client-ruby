# DatadogAPIClient::V2::LogsArchiveOrderAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **archive_ids** | **Array&lt;String&gt;** | An ordered array of &#x60;&lt;ARCHIVE_ID&gt;&#x60; strings, the order of archive IDs in the array define the overall archives order for Datadog. |  |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsArchiveOrderAttributes.new(
  archive_ids: [&quot;a2zcMylnM4OCHpYusxIi1g&quot;,&quot;a2zcMylnM4OCHpYusxIi2g&quot;,&quot;a2zcMylnM4OCHpYusxIi3g&quot;]
)
```

