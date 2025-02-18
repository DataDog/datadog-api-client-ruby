# List all Application Security exclusion filters returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ApplicationSecurityAPI.new
p api_instance.list_application_security_exclusion_filters()
