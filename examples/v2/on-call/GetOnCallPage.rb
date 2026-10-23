# Get On-Call page returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::OnCallAPI.new
p api_instance.get_on_call_page("f63eb677-07ce-46ab-b2e0-80ca1ffe91bf")
