# Get a governance control detection returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_governance_control_detection".to_sym] = true
end
api_instance = DatadogAPIClient::V2::GovernanceControlsAPI.new
p api_instance.get_governance_control_detection("detection_type", "detection_id")
