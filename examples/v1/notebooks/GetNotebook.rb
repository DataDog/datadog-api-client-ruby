# Get a notebook returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::NotebooksAPI.new

# there is a valid "notebook" in the system
NOTEBOOK_DATA_ID = ENV["NOTEBOOK_DATA_ID"]
p api_instance.get_notebook(NOTEBOOK_DATA_ID.to_i)
