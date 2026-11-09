# Get a usage quota returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_quotas".to_sym] = true
  config.unstable_operations["v2.delete_quota".to_sym] = true
  config.unstable_operations["v2.get_quota".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new

# there is a valid "quota" in the system
QUOTA_DATA_0_ID = ENV["QUOTA_DATA_0_ID"]
opts = {
  include_descendants: false,
}
p api_instance.get_quota("ai_credits", QUOTA_DATA_0_ID, opts)
