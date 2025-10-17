# Delete custom attribute from case returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

# there is a valid "case" with a custom "case_type" in the system
CASE_WITH_TYPE_ID = ENV["CASE_WITH_TYPE_ID"]

# there is a valid "custom_attribute" in the system
CUSTOM_ATTRIBUTE_ATTRIBUTES_KEY = ENV["CUSTOM_ATTRIBUTE_ATTRIBUTES_KEY"]
p api_instance.delete_case_custom_attribute(CASE_WITH_TYPE_ID, CUSTOM_ATTRIBUTE_ATTRIBUTES_KEY)
