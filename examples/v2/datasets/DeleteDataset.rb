# Delete a dataset returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DatasetsAPI.new
api_instance.delete_dataset("dataset_id")
