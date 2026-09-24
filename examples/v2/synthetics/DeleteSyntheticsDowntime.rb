# Delete a Synthetics downtime returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new
api_instance.delete_synthetics_downtime("00000000-0000-0000-0000-000000000001")
