# DatadogAPIClient::V2::HTTPLogItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ddsource** | **String** | The integration name associated with your log: the technology from which the log originated. When it matches an integration name, Datadog automatically installs the corresponding parsers and facets. See [reserved attributes](https://docs.datadoghq.com/logs/log_collection/#reserved-attributes). | [optional] |
| **ddtags** | **String** | Tags associated with your logs. | [optional] |
| **hostname** | **String** | The name of the originating host of the log. | [optional] |
| **message** | **String** | The message [reserved attribute](https://docs.datadoghq.com/logs/log_collection/#reserved-attributes) of your log. By default, Datadog ingests the value of the message attribute as the body of the log entry. That value is then highlighted and displayed in the Logstream, where it is indexed for full text search. | [optional] |
| **service** | **String** | The name of the application or service generating the log events. It is used to switch from Logs to APM, so make sure you define the same value when you use both products. See [reserved attributes](https://docs.datadoghq.com/logs/log_collection/#reserved-attributes). | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::HTTPLogItem.new(
  ddsource: nginx,
  ddtags: env:staging,version:5.1,
  hostname: i-012345678,
  message: 2019-11-19T14:37:58,995 INFO [process.name][20081] Hello World,
  service: payment
)
```

