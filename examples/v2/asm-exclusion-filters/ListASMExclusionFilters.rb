# List ASM Exclusion Filters returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ASMExclusionFiltersAPI.new
p api_instance.list_asm_exclusion_filters()
