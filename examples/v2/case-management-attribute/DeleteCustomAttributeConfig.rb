# Delete custom attributes config returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAttributeAPI.new

# there is a valid "case_type" in the system
CASE_TYPE_ID = ENV["CASE_TYPE_ID"]

# there is a valid "custom_attribute" in the system
CUSTOM_ATTRIBUTE_ID = ENV["CUSTOM_ATTRIBUTE_ID"]
api_instance.delete_custom_attribute_config(CASE_TYPE_ID, CUSTOM_ATTRIBUTE_ID)
