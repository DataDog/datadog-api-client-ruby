# List org group policy configs returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_org_group_policy_configs".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OrgGroupsAPI.new
p api_instance.list_org_group_policy_configs()
