# Get a security filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityPlatformAPI.new
p api_instance.get_security_filter("security_filter_id")
