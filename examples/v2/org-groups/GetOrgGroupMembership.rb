# Get an org group membership returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_org_group_membership".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OrgGroupsAPI.new
p api_instance.get_org_group_membership("f1e2d3c4-b5a6-7890-1234-567890abcdef")
