# Remove an allowed outreach domain returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.remove_security_agent_outreach_policy_domain".to_sym] = true
end
api_instance = DatadogAPIClient::V2::BitsSecurityAnalystAPI.new
p api_instance.remove_security_agent_outreach_policy_domain("acme.com")
