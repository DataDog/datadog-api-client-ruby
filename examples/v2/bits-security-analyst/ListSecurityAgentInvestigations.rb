# List Bits Security Analyst investigations returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.list_security_agent_investigations".to_sym] = true
end
api_instance = DatadogAPIClient::V2::BitsSecurityAnalystAPI.new
opts = {
  page_size: 1,
}
p api_instance.list_security_agent_investigations(opts)
