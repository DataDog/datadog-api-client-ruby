# DatadogAPIClient::V1::UsageHostHour

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agent_host_count** | **Integer** | Contains the total number of infrastructure hosts reporting during a given hour that were running the Datadog Agent. | [optional] 
**alibaba_host_count** | **Integer** | Contains the total number of hosts that reported via Alibaba integration (and were NOT running the Datadog Agent). | [optional] 
**apm_host_count** | **Integer** | Shows the total number of hosts using APM during the hour, these are counted as billable (except during trial periods). | [optional] 
**aws_host_count** | **Integer** | Contains the total number of hosts that reported via the AWS integration (and were NOT running the Datadog Agent). | [optional] 
**azure_host_count** | **Integer** | Contains the total number of hosts that reported via Azure integration (and were NOT running the Datadog Agent). | [optional] 
**container_count** | **Integer** | Shows the total number of containers reported by the Docker integration during the hour. | [optional] 
**gcp_host_count** | **Integer** | Contains the total number of hosts that reported via the Google Cloud integration (and were NOT running the Datadog Agent). | [optional] 
**host_count** | **Integer** | Contains the total number of billable infrastructure hosts reporting during a given hour. This is the sum of &#x60;agent_host_count&#x60;, &#x60;aws_host_count&#x60;, and &#x60;gcp_host_count&#x60;. | [optional] 
**hour** | **DateTime** | The hour for the usage. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::UsageHostHour.new(agent_host_count: null,
                                 alibaba_host_count: null,
                                 apm_host_count: null,
                                 aws_host_count: null,
                                 azure_host_count: null,
                                 container_count: null,
                                 gcp_host_count: null,
                                 host_count: null,
                                 hour: null)
```


