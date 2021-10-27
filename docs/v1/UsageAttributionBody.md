# DatadogAPIClient::V1::UsageAttributionBody

## Properties

| Name                  | Type                                                    | Description                                                                                                                                                                                         | Notes      |
| --------------------- | ------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **month**             | **Time**                                                | Datetime in ISO-8601 format, UTC, precise to month: [YYYY-MM].                                                                                                                                      | [optional] |
| **org_name**          | **String**                                              | The name of the organization.                                                                                                                                                                       | [optional] |
| **public_id**         | **String**                                              | The organization public ID.                                                                                                                                                                         | [optional] |
| **tag_config_source** | **String**                                              | The source of the usage attribution tag configuration and the selected tags in the format &#x60;&lt;source_org_name&gt;:&lt;selected tag 1&gt;-&lt;selected tag 2&gt;-&lt;selected tag 3&gt;&#x60;. | [optional] |
| **tags**              | **Hash&lt;String, Array&lt;String&gt;&gt;**             | Usage Summary by tag name.                                                                                                                                                                          | [optional] |
| **updated_at**        | **String**                                              | Shows the the most recent hour in the current months for all organizations for which all usages were calculated.                                                                                    | [optional] |
| **values**            | [**UsageAttributionValues**](UsageAttributionValues.md) |                                                                                                                                                                                                     | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageAttributionBody.new(
  month: null,
  org_name: null,
  public_id: null,
  tag_config_source: null,
  tags: null,
  updated_at: null,
  values: null
)
```
