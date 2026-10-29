# Delete a Workload Protection agent rule (US1-FED) returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::CSMThreatsAPI.new
api_instance.delete_cloud_workload_security_agent_rule("agent_rule_id")
