require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::NotebooksAPI.new
body = DatadogAPIClient::V1::NotebookCreateRequest.new({data: DatadogAPIClient::V1::NotebookCreateData.new({attributes: DatadogAPIClient::V1::NotebookCreateDataAttributes.new({cells: [DatadogAPIClient::V1::NotebookCellCreateRequest.new({attributes: DatadogAPIClient::V1::NotebookDistributionCellAttributes.new({definition: DatadogAPIClient::V1::DistributionWidgetDefinition.new({requests: [DatadogAPIClient::V1::DistributionWidgetRequest.new], type: DatadogAPIClient::V1::DistributionWidgetDefinitionType::DISTRIBUTION})}), type: DatadogAPIClient::V1::NotebookCellResourceType::NOTEBOOK_CELLS})], name: 'Example Notebook', time: DatadogAPIClient::V1::NotebookAbsoluteTime.new({_end: Time.parse('2021-02-24T20:18:28Z'), start: Time.parse('2021-02-24T19:18:28Z')})}), type: DatadogAPIClient::V1::NotebookResourceType::NOTEBOOKS})}) # NotebookCreateRequest | The JSON description of the notebook you want to create.

begin
  # Create a notebook
  result = api_instance.create_notebook(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling NotebooksAPI->create_notebook: #{e}"
end
