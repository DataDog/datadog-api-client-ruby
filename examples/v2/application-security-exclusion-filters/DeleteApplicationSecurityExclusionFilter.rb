# Delete an ASM Exclusion Filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ApplicationSecurityExclusionFiltersAPI.new
api_instance.delete_application_security_exclusion_filter("exclusion_filter_id")
