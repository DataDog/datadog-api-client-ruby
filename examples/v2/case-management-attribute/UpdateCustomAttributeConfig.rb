# Update custom attribute config returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAttributeAPI.new

body = DatadogAPIClient::V2::CustomAttributeConfigUpdateRequest.new({
  data: DatadogAPIClient::V2::CustomAttributeConfigUpdate.new({
    attributes: DatadogAPIClient::V2::CustomAttributeConfigUpdateAttributes.new({
      description: "Updated description.",
      display_name: "AWS Region",
      type: DatadogAPIClient::V2::CustomAttributeType::NUMBER,
      type_data: DatadogAPIClient::V2::CustomAttributeTypeData.new({
        options: [
          DatadogAPIClient::V2::CustomAttributeSelectOption.new({
            value: "us-east-1",
          }),
        ],
      }),
    }),
    type: DatadogAPIClient::V2::CustomAttributeConfigResourceType::CUSTOM_ATTRIBUTE,
  }),
})
p api_instance.update_custom_attribute_config("case_type_id", "custom_attribute_id", body)
