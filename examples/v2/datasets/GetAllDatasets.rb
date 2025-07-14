# Get all datasets returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DatasetsAPI.new
p api_instance.get_all_datasets()
