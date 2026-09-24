# Get a WAF custom rule returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ApplicationSecurityAPI.new
p api_instance.get_application_security_waf_custom_rule("custom_rule_id")
