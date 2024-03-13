# Get all custom destinations returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsCustomDestinationsAPI.new
p api_instance.list_logs_custom_destinations()
