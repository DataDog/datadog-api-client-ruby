# Get users with seats returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::SeatsAPI.new
opts = {
  page_limit: 100,
}
p api_instance.get_seats_users("incident_response", opts)
