# DatadogAPIClient::V1::MetricsQueryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | Message indicating the errors if status is not &#x60;ok&#x60;. | [optional][readonly] |
| **from_date** | **Integer** | Start of requested time window, milliseconds since Unix epoch. | [optional][readonly] |
| **group_by** | **Array&lt;String&gt;** | List of tag keys on which to group. | [optional][readonly] |
| **message** | **String** | Message indicating &#x60;success&#x60; if status is &#x60;ok&#x60;. | [optional][readonly] |
| **query** | **String** | Query string | [optional][readonly] |
| **res_type** | **String** | Type of response. | [optional][readonly] |
| **series** | [**Array&lt;MetricsQueryMetadata&gt;**](MetricsQueryMetadata.md) | List of timeseries queried. | [optional][readonly] |
| **status** | **String** | Status of the query. | [optional][readonly] |
| **to_date** | **Integer** | End of requested time window, milliseconds since Unix epoch. | [optional][readonly] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::MetricsQueryResponse.new(
  error: null,
  from_date: null,
  group_by: null,
  message: null,
  query: null,
  res_type: time_series,
  series: null,
  status: ok,
  to_date: null
)
```

