# DatadogAPIClient::V1::NotebookMetadata

## Properties

| Name               | Type                                                | Description                                                                                       | Notes                                 |
| ------------------ | --------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------- |
| **is_template**    | **Boolean**                                         | Whether or not the notebook is a template.                                                        | [optional][default to false]          |
| **take_snapshots** | **Boolean**                                         | Whether or not the notebook takes snapshot image backups of the notebook&#39;s fixed-time graphs. | [optional][default to false]          |
| **type**           | [**NotebookMetadataType**](NotebookMetadataType.md) |                                                                                                   | [optional][default to &#39;null&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::NotebookMetadata.new(
  is_template: false,
  take_snapshots: false,
  type: null
)
```
