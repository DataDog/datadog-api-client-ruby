# DatadogAPIClient::V1::LogsPipelineProcessor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | [**LogsFilter**](LogsFilter.md) |  | [optional] |
| **is_enabled** | **Boolean** | Whether or not the processor is enabled. | [optional][default to false] |
| **name** | **String** | Name of the processor. | [optional] |
| **processors** | [**Array&lt;LogsProcessor&gt;**](LogsProcessor.md) | Ordered list of processors in this pipeline. | [optional] |
| **type** | [**LogsPipelineProcessorType**](LogsPipelineProcessorType.md) |  | [default to &#39;pipeline&#39;] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsPipelineProcessor.new(
  filter: null,
  is_enabled: null,
  name: null,
  processors: null,
  type: null
)
```

