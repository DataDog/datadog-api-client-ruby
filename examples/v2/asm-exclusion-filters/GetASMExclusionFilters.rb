# Get a specific ASM Exclusion Filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ASMExclusionFiltersAPI.new
p api_instance.get_asm_exclusion_filters("exclusion_filter_id")
