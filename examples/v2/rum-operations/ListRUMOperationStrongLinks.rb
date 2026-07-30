# List RUM operation strong links returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMOperationsAPI.new
p api_instance.list_rum_operation_strong_links()
