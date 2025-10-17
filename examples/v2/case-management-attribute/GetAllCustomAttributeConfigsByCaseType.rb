# Get all custom attributes config of case type returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAttributeAPI.new

# there is a valid "case_type" in the system
CASE_TYPE_ID = ENV["CASE_TYPE_ID"]
p api_instance.get_all_custom_attribute_configs_by_case_type(CASE_TYPE_ID)
