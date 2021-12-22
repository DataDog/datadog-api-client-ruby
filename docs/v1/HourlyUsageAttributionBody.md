# DatadogAPIClient::V1::HourlyUsageAttributionBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hour** | **Time** | The hour for the usage. | [optional] |
| **org_name** | **String** | The name of the organization. | [optional] |
| **public_id** | **String** | The organization public ID. | [optional] |
| **tag_config_source** | **String** | The source of the usage attribution tag configuration and the selected tags in the format of &#x60;&lt;source_org_name&gt;:::&lt;selected tag 1&gt;///&lt;selected tag 2&gt;///&lt;selected tag 3&gt;&#x60;. | [optional] |
| **tags** | **Hash&lt;String, Array&lt;String&gt;&gt;** | Usage Summary by tag name. | [optional] |
| **total_usage_sum** | **Float** | Total product usage for the given tags within the hour. | [optional] |
| **updated_at** | **String** | Shows the most recent hour in the current month for all organizations where usages are calculated. | [optional] |
| **usage_type** | [**HourlyUsageAttributionUsageType**](HourlyUsageAttributionUsageType.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::HourlyUsageAttributionBody.new(
  hour: null,
  org_name: null,
  public_id: null,
  tag_config_source: null,
  tags: null,
  total_usage_sum: null,
  updated_at: null,
  usage_type: null
)
```

