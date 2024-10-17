# List all ASM Exclusion Filters returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ApplicationSecurityExclusionFiltersAPI.new
p api_instance.list_application_security_exclusion_filters()
