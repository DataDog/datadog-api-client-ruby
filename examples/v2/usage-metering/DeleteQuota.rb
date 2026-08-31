# Delete a usage quota returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_quota".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
api_instance.delete_quota("ai_credits", "MjAfYWlfY3JlZGl0c1911c2VyX2hhbmRsZTpfX0FMTF9f")
