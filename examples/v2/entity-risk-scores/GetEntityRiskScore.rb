# Get Entity Risk Score returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_entity_risk_score".to_sym] = true
end
api_instance = DatadogAPIClient::V2::EntityRiskScoresAPI.new
p api_instance.get_entity_risk_score("arn:aws:iam::123456789012:user/john.doe")
