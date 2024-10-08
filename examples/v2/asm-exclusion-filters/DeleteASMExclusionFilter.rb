# Delete a ASM Exclusion Filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ASMExclusionFiltersAPI.new
api_instance.delete_asm_exclusion_filter("exclusion_filter_id")
