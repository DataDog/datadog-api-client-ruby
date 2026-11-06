# Get a usage quota returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.get_quota".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
p api_instance.get_quota("ai_credits", "MTIzNB9haV9jcmVkaXRzH3VzZXJfaGFuZGxlOl9fQUxMX18")
