# List governance limits returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_governance_limits".to_sym] = true
end
api_instance = DatadogAPIClient::V2::GovernanceSettingsAPI.new
p api_instance.list_governance_limits()
