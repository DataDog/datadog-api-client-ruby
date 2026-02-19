# Create a change request branch returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_change_request_branch".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ChangeManagementAPI.new

body = DatadogAPIClient::V2::ChangeRequestBranchCreateRequest.new({
  data: DatadogAPIClient::V2::ChangeRequestBranchCreateData.new({
    attributes: DatadogAPIClient::V2::ChangeRequestBranchCreateAttributes.new({
      branch_name: "chm/CHM-1234",
      repo_id: "DataDog/dd-source",
    }),
    type: DatadogAPIClient::V2::ChangeRequestBranchResourceType::CHANGE_REQUEST_BRANCH,
  }),
})
p api_instance.create_change_request_branch("change_request_id", body)
