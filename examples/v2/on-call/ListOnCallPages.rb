# List On-Call pages returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::OnCallAPI.new
opts = {
  filter_query: "key:1",
}
p api_instance.list_on_call_pages(opts)
