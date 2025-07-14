# Get a single dataset by ID returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DatasetsAPI.new
p api_instance.get_dataset("dataset_id")
