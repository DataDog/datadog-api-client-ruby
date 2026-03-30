# Get all Data Access Control datasets returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DataAccessControlsAPI.new
p api_instance.get_all_datasets()
