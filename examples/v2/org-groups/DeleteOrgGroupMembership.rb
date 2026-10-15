# Delete an org group membership returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.delete_org_group_membership".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OrgGroupsAPI.new
api_instance.delete_org_group_membership("f1e2d3c4-b5a6-7890-1234-567890abcdef", "a1b2c3d4-e5f6-7890-abcd-ef0123456789")
