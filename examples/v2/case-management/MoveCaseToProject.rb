# Update case project returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.move_case_to_project".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

body = DatadogAPIClient::V2::ProjectRelationship.new({
  data: DatadogAPIClient::V2::ProjectRelationshipData.new({
    id: "e555e290-ed65-49bd-ae18-8acbfcf18db7",
    type: DatadogAPIClient::V2::ProjectResourceType::PROJECT,
  }),
})
p api_instance.move_case_to_project("case_id", body)
