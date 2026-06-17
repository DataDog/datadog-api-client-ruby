# List governance insights returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_governance_insights".to_sym] = true
end
api_instance = DatadogAPIClient::V2::GovernanceInsightsAPI.new
p api_instance.list_governance_insights()
