# List org group policies returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_org_group_policies".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OrgGroupsAPI.new
p api_instance.list_org_group_policies("a1b2c3d4-e5f6-7890-abcd-ef0123456789")
