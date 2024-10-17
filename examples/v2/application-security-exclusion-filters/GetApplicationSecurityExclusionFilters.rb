# Get a specific ASM Exclusion Filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ApplicationSecurityExclusionFiltersAPI.new
p api_instance.get_application_security_exclusion_filters("exclusion_filter_id")
