# DatadogAPIClient::V1::UsageSpecifiedCustomReportsAttributes

## Properties

| Name            | Type                    | Description                                                  | Notes      |
| --------------- | ----------------------- | ------------------------------------------------------------ | ---------- |
| **computed_on** | **String**              | The date the specified custom report was computed.           | [optional] |
| **end_date**    | **String**              | The ending date of specified custom report.                  | [optional] |
| **location**    | **String**              | A downloadable file for the specified custom reporting file. | [optional] |
| **size**        | **Integer**             | size                                                         | [optional] |
| **start_date**  | **String**              | The starting date of specified custom report.                | [optional] |
| **tags**        | **Array&lt;String&gt;** | A list of tags to apply to specified custom reports.         | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageSpecifiedCustomReportsAttributes.new(
  computed_on: null,
  end_date: null,
  location: https://an-s3-or-gs-bucket.s3.amazonaws.com,
  size: null,
  start_date: null,
  tags: null
)
```
