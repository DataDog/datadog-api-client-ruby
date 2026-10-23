# List On-Call escalation policies returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::OnCallAPI.new
api_instance.list_on_call_escalation_policies_with_pagination() { |item| puts item }
