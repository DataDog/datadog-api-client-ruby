# Delete an org group policy returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_org_group_policy".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OrgGroupsAPI.new
api_instance.delete_org_group_policy("1a2b3c4d-5e6f-7890-abcd-ef0123456789")
