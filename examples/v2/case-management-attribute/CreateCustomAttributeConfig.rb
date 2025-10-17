# Create custom attribute config for a case type returns "CREATED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAttributeAPI.new

# there is a valid "case_type" in the system
CASE_TYPE_ID = ENV["CASE_TYPE_ID"]

body = DatadogAPIClient::V2::CustomAttributeConfigCreateRequest.new({
  data: DatadogAPIClient::V2::CustomAttributeConfigCreate.new({
    attributes: DatadogAPIClient::V2::CustomAttributeConfigAttributesCreate.new({
      display_name: "AWS Region 9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d",
      is_multi: true,
      key: "region_d9fe56bc9274fbb6",
      type: DatadogAPIClient::V2::CustomAttributeType::NUMBER,
    }),
    type: DatadogAPIClient::V2::CustomAttributeConfigResourceType::CUSTOM_ATTRIBUTE,
  }),
})
p api_instance.create_custom_attribute_config(CASE_TYPE_ID, body)
