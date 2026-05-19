# Update a case type returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_case_type".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CaseManagementTypeAPI.new

body = DatadogAPIClient::V2::CaseTypeUpdateRequest.new({
  data: DatadogAPIClient::V2::CaseTypeUpdate.new({
    attributes: DatadogAPIClient::V2::CaseTypeResourceAttributes.new({
      description: "Investigations done in case management",
      emoji: '🕵🏻\u200d♂️',
      name: "Investigation",
    }),
    type: DatadogAPIClient::V2::CaseTypeResourceType::CASE_TYPE,
  }),
})
p api_instance.update_case_type("case_type_id", body)
