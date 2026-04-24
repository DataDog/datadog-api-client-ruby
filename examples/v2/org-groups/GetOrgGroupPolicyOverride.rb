# Get an org group policy override returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_org_group_policy_override".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OrgGroupsAPI.new
p api_instance.get_org_group_policy_override("9f8e7d6c-5b4a-3210-fedc-ba0987654321")
