# Get an Application Security exclusion filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ApplicationSecurityAPI.new
p api_instance.get_application_security_exclusion_filter("exclusion_filter_id")
