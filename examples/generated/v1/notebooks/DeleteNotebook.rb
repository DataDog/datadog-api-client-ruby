require "datadog_api_client"
api_instance = DatadogAPIClient::V1::NotebooksAPI.new
notebook_id = 789 # Integer | Unique ID, assigned when you create the notebook.

begin
  # Delete a notebook
  api_instance.delete_notebook(notebook_id)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling NotebooksAPI->delete_notebook: #{e}"
end
