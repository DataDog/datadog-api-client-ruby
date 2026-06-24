# Get a governance control returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_governance_control".to_sym] = true
end
api_instance = DatadogAPIClient::V2::GovernanceControlsAPI.new
p api_instance.get_governance_control("detection_type")
