# Get all security filters returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityPlatformAPI.new
p api_instance.list_security_filters()
