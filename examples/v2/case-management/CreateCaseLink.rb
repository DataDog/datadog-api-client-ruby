# Create a case link returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_case_link".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

body = DatadogAPIClient::V2::CaseLinkCreateRequest.new({
  data: DatadogAPIClient::V2::CaseLinkCreate.new({
    attributes: DatadogAPIClient::V2::CaseLinkAttributes.new({
      child_entity_id: "4417921d-0866-4a38-822c-6f2a0f65f77d",
      child_entity_type: "CASE",
      parent_entity_id: "bf0cbac6-4c16-4cfb-b6bf-ca5e0ec37a4f",
      parent_entity_type: "CASE",
      relationship: "BLOCKS",
    }),
    type: DatadogAPIClient::V2::CaseLinkResourceType::LINK,
  }),
})
p api_instance.create_case_link(body)
