# DatadogAPIClient::V1::Host

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aliases** | **Array&lt;String&gt;** | Host aliases collected by Datadog. | [optional] |
| **apps** | **Array&lt;String&gt;** | The Datadog integrations reporting metrics for the host. | [optional] |
| **aws_name** | **String** | AWS name of your host. | [optional] |
| **host_name** | **String** | The host name. | [optional] |
| **id** | **Integer** | The host ID. | [optional] |
| **is_muted** | **Boolean** | If a host is muted or unmuted. | [optional] |
| **last_reported_time** | **Integer** | Last time the host reported a metric data point. | [optional] |
| **meta** | [**HostMeta**](HostMeta.md) |  | [optional] |
| **metrics** | [**HostMetrics**](HostMetrics.md) |  | [optional] |
| **mute_timeout** | **Integer** | Timeout of the mute applied to your host. | [optional] |
| **name** | **String** | The host name. | [optional] |
| **sources** | **Array&lt;String&gt;** | Source or cloud provider associated with your host. | [optional] |
| **tags_by_source** | **Hash&lt;String, Array&lt;String&gt;&gt;** | List of tags for each source (AWS, Datadog Agent, Chef..). | [optional] |
| **up** | **Boolean** | Displays UP when the expected metrics are received and displays &#x60;???&#x60; if no metrics are received. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::Host.new(
  aliases: null,
  apps: null,
  aws_name: mycoolhost-1,
  host_name: i-deadbeef,
  id: 123456,
  is_muted: false,
  last_reported_time: 1565000000,
  meta: null,
  metrics: null,
  mute_timeout: null,
  name: i-hostname,
  sources: null,
  tags_by_source: null,
  up: true
)
```

