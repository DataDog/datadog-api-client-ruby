# Get all downtimes returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_downtimes".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DowntimesAPI.new
opts = {
  page_limit: 2,
}
api_instance.list_downtimes_with_pagination(opts) { |item| puts item }
