# Delete a usage quota returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.delete_quota".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
api_instance.delete_quota("ai_credits", "MTIzNB9haV9jcmVkaXRzH3VzZXJfaGFuZGxlOl9fQUxMX18")
