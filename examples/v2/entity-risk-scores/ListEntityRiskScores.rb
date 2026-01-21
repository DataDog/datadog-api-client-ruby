# List Entity Risk Scores returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_entity_risk_scores".to_sym] = true
end
api_instance = DatadogAPIClient::V2::EntityRiskScoresAPI.new
p api_instance.list_entity_risk_scores()
