# Get a detection returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_governance_detection".to_sym] = true
end
api_instance = DatadogAPIClient::V2::GovernanceConsoleAPI.new
p api_instance.get_governance_detection("detection_id")
