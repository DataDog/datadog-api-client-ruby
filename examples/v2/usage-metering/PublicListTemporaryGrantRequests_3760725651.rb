# List organization temporary grant requests returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.public_list_temporary_grant_requests".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
api_instance.public_list_temporary_grant_requests_with_pagination() { |item| puts item }
