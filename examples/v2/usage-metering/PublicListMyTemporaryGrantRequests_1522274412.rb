# List your pending temporary grant requests

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.public_list_my_temporary_grant_requests".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
opts = {
  filter_status: TemporaryGrantRequestStatus::PENDING,
  page_limit: 1,
}
p api_instance.public_list_my_temporary_grant_requests(opts)
