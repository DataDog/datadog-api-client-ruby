# Get all powerpacks returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::PowerpackAPI.new
opts = {
  page_limit: 1000,
}
p api_instance.list_powerpacks(opts)
