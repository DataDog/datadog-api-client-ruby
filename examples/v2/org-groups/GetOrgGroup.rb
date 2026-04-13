# Get an org group returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_org_group".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OrgGroupsAPI.new
p api_instance.get_org_group("a1b2c3d4-e5f6-7890-abcd-ef0123456789")
