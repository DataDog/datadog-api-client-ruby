# DatadogAPIClient::V2::ProcessSummaryAttributes

## Properties

| Name          | Type                    | Description                               | Notes      |
| ------------- | ----------------------- | ----------------------------------------- | ---------- |
| **cmdline**   | **String**              | Process command line.                     | [optional] |
| **host**      | **String**              | Host running the process.                 | [optional] |
| **pid**       | **Integer**             | Process ID.                               | [optional] |
| **ppid**      | **Integer**             | Parent process ID.                        | [optional] |
| **start**     | **String**              | Time the process was started.             | [optional] |
| **tags**      | **Array&lt;String&gt;** | List of tags associated with the process. | [optional] |
| **timestamp** | **String**              | Time the process was seen.                | [optional] |
| **user**      | **String**              | Process owner.                            | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::ProcessSummaryAttributes.new(
  cmdline: null,
  host: null,
  pid: null,
  ppid: null,
  start: null,
  tags: null,
  timestamp: null,
  user: null
)
```
