# Get all custom attributes returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAttributeAPI.new
p api_instance.get_all_custom_attributes()
