# Delete a WAF exclusion filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ApplicationSecurityAPI.new

# there is a valid "exclusion_filter" in the system
EXCLUSION_FILTER_DATA_ID = ENV["EXCLUSION_FILTER_DATA_ID"]
api_instance.delete_application_security_waf_exclusion_filter(EXCLUSION_FILTER_DATA_ID)
