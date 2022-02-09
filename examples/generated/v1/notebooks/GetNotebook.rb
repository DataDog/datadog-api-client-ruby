require "datadog_api_client"
api_instance = DatadogAPIClient::V1::NotebooksAPI.new
notebook_id = 789 # Integer | Unique ID, assigned when you create the notebook.

begin
  # Get a notebook
  result = api_instance.get_notebook(notebook_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling NotebooksAPI->get_notebook: #{e}"
end
