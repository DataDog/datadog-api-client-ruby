# DatadogAPIClient::V1::LogsPipeline

## Properties

| Name             | Type                                               | Description                                  | Notes                |
| ---------------- | -------------------------------------------------- | -------------------------------------------- | -------------------- |
| **filter**       | [**LogsFilter**](LogsFilter.md)                    |                                              | [optional]           |
| **id**           | **String**                                         | ID of the pipeline.                          | [optional][readonly] |
| **is_enabled**   | **Boolean**                                        | Whether or not the pipeline is enabled.      | [optional]           |
| **is_read_only** | **Boolean**                                        | Whether or not the pipeline can be edited.   | [optional][readonly] |
| **name**         | **String**                                         | Name of the pipeline.                        |                      |
| **processors**   | [**Array&lt;LogsProcessor&gt;**](LogsProcessor.md) | Ordered list of processors in this pipeline. | [optional]           |
| **type**         | **String**                                         | Type of pipeline.                            | [optional][readonly] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsPipeline.new(
  filter: null,
  id: null,
  is_enabled: null,
  is_read_only: null,
  name: ,
  processors: null,
  type: pipeline
)
```
