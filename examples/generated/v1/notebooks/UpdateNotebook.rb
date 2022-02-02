require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::NotebooksAPI.new
notebook_id = 789 # Integer | Unique ID, assigned when you create the notebook.
body = DatadogAPIClient::V1::NotebookUpdateRequest.new({data: DatadogAPIClient::V1::NotebookUpdateData.new({attributes: DatadogAPIClient::V1::NotebookUpdateDataAttributes.new({cells: [DatadogAPIClient::V1::NotebookCellCreateRequest.new({attributes: DatadogAPIClient::V1::NotebookDistributionCellAttributes.new({definition: DatadogAPIClient::V1::DistributionWidgetDefinition.new({requests: [DatadogAPIClient::V1::DistributionWidgetRequest.new], type: DatadogAPIClient::V1::DistributionWidgetDefinitionType::DISTRIBUTION})}), type: DatadogAPIClient::V1::NotebookCellResourceType::NOTEBOOK_CELLS})], name: 'Example Notebook', time: DatadogAPIClient::V1::NotebookAbsoluteTime.new({_end: Time.parse('2021-02-24T20:18:28Z'), start: Time.parse('2021-02-24T19:18:28Z')})}), type: DatadogAPIClient::V1::NotebookResourceType::NOTEBOOKS})}) # NotebookUpdateRequest | Update notebook request body.

begin
  # Update a notebook
  result = api_instance.update_notebook(notebook_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling NotebooksAPI->update_notebook: #{e}"
end
