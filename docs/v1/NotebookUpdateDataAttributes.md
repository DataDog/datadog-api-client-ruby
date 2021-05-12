# DatadogAPIClient::V1::NotebookUpdateDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cells** | [**Array&lt;NotebookUpdateCell&gt;**](NotebookUpdateCell.md) | List of cells to display in the notebook. |  |
| **name** | **String** | Notebook name. |  |
| **status** | [**NotebookStatus**](NotebookStatus.md) |  | [optional][default to &#39;published&#39;] |
| **time** | [**NotebookGlobalTime**](NotebookGlobalTime.md) |  |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::NotebookUpdateDataAttributes.new(
  cells: [{&quot;attributes&quot;:{&quot;definition&quot;:{&quot;text&quot;:&quot;## Some test markdown\n\n&#x60;&#x60;&#x60;js\nvar x, y;\nx &#x3D; 5;\ny &#x3D; 6;\n&#x60;&#x60;&#x60;&quot;,&quot;type&quot;:&quot;markdown&quot;}},&quot;id&quot;:&quot;bzbycoya&quot;,&quot;type&quot;:&quot;notebook_cells&quot;},{&quot;attributes&quot;:{&quot;definition&quot;:{&quot;requests&quot;:[{&quot;display_type&quot;:&quot;line&quot;,&quot;q&quot;:&quot;avg:system.load.1{*}&quot;,&quot;style&quot;:{&quot;line_type&quot;:&quot;solid&quot;,&quot;line_width&quot;:&quot;normal&quot;,&quot;palette&quot;:&quot;dog_classic&quot;}}],&quot;show_legend&quot;:true,&quot;type&quot;:&quot;timeseries&quot;,&quot;yaxis&quot;:{&quot;scale&quot;:&quot;linear&quot;}},&quot;graph_size&quot;:&quot;m&quot;,&quot;split_by&quot;:{&quot;keys&quot;:[],&quot;tags&quot;:[]},&quot;time&quot;:null},&quot;id&quot;:&quot;9k6bc6xc&quot;,&quot;type&quot;:&quot;notebook_cells&quot;}],
  name: Example Notebook,
  status: null,
  time: null
)
```

