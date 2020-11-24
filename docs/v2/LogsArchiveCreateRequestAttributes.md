# DatadogAPIClient::V2::LogsArchiveCreateRequestAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination** | [**LogsArchiveCreateRequestDestination**](LogsArchiveCreateRequestDestination.md) |  |  |
| **include_tags** | **Boolean** | To store the tags in the archive, set the value \&quot;true\&quot;. If it is set to \&quot;false\&quot;, the tags will be deleted when the logs are sent to the archive. | [optional][default to false] |
| **name** | **String** | The archive name. |  |
| **query** | **String** | The archive query/filter. Logs matching this query are included in the archive. |  |
| **rehydration_tags** | **Array&lt;String&gt;** | An array of tags to add to rehydrated logs from an archive. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsArchiveCreateRequestAttributes.new(
  destination: null,
  include_tags: false,
  name: Nginx Archive,
  query: source:nginx,
  rehydration_tags: [&quot;team:intake&quot;,&quot;team:app&quot;]
)
```

