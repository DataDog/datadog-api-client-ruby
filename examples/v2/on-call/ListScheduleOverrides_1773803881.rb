# List On-Call schedule overrides returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::OnCallAPI.new
api_instance.list_schedule_overrides_with_pagination("3653d3c6-0c75-11ea-ad28-fb5701eabc7d", "2024-01-07T02:53:01Z", "2024-01-14T02:53:01Z") { |item| puts item }
