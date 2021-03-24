# DatadogAPIClient::V1::UsageHostHour

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_host_count** | **Integer** | Contains the total number of infrastructure hosts reporting during a given hour that were running the Datadog Agent. | [optional] |
| **alibaba_host_count** | **Integer** | Contains the total number of hosts that reported via Alibaba integration (and were NOT running the Datadog Agent). | [optional] |
| **apm_azure_app_service_host_count** | **Integer** | Contains the total number of Azure App Services hosts using APM. | [optional] |
| **apm_host_count** | **Integer** | Shows the total number of hosts using APM during the hour, these are counted as billable (except during trial periods). | [optional] |
| **aws_host_count** | **Integer** | Contains the total number of hosts that reported via the AWS integration (and were NOT running the Datadog Agent). | [optional] |
| **azure_host_count** | **Integer** | Contains the total number of hosts that reported via Azure integration (and were NOT running the Datadog Agent). | [optional] |
| **container_count** | **Integer** | Shows the total number of containers reported by the Docker integration during the hour. | [optional] |
| **gcp_host_count** | **Integer** | Contains the total number of hosts that reported via the Google Cloud integration (and were NOT running the Datadog Agent). | [optional] |
| **heroku_host_count** | **Integer** | Contains the total number of Heroku dynos reported by the Datadog Agent. | [optional] |
| **host_count** | **Integer** | Contains the total number of billable infrastructure hosts reporting during a given hour. This is the sum of &#x60;agent_host_count&#x60;, &#x60;aws_host_count&#x60;, and &#x60;gcp_host_count&#x60;. | [optional] |
| **hour** | **Time** | The hour for the usage. | [optional] |
| **infra_azure_app_service** | **Integer** | Contains the total number of hosts that reported via the Azure App Services integration (and were NOT running the Datadog Agent). | [optional] |
| **opentelemetry_host_count** | **Integer** | Contains the total number of hosts reported by Datadog exporter for the OpenTelemetry Collector. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageHostHour.new(
  agent_host_count: null,
  alibaba_host_count: null,
  apm_azure_app_service_host_count: null,
  apm_host_count: null,
  aws_host_count: null,
  azure_host_count: null,
  container_count: null,
  gcp_host_count: null,
  heroku_host_count: null,
  host_count: null,
  hour: null,
  infra_azure_app_service: null,
  opentelemetry_host_count: null
)
```

