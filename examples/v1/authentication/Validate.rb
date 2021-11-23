# Validate API key returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AuthenticationAPI.new
p api_instance.validate()
