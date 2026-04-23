# Get an org group policy returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_org_group_policy".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OrgGroupsAPI.new
p api_instance.get_org_group_policy("1a2b3c4d-5e6f-7890-abcd-ef0123456789")
