# Update case custom attribute returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

# there is a valid "case" with a custom "case_type" in the system
CASE_WITH_TYPE_ID = ENV["CASE_WITH_TYPE_ID"]

# there is a valid "custom_attribute" in the system
CUSTOM_ATTRIBUTE_ATTRIBUTES_KEY = ENV["CUSTOM_ATTRIBUTE_ATTRIBUTES_KEY"]

body = DatadogAPIClient::V2::CaseUpdateCustomAttributeRequest.new({
  data: DatadogAPIClient::V2::CaseUpdateCustomAttribute.new({
    attributes: DatadogAPIClient::V2::CustomAttributeValue.new({
      type: DatadogAPIClient::V2::CustomAttributeType::TEXT,
      is_multi: true,
      value: [
        "Abba",
        "The Cure",
      ],
    }),
    type: DatadogAPIClient::V2::CaseResourceType::CASE,
  }),
})
p api_instance.update_case_custom_attribute(CASE_WITH_TYPE_ID, CUSTOM_ATTRIBUTE_ATTRIBUTES_KEY, body)
