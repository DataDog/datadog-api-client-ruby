# Get all application keys returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::KeyManagementAPI.new
p api_instance.list_application_keys()
