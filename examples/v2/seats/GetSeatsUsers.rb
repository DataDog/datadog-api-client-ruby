# Get users with seats returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SeatsAPI.new
opts = {
  page_limit: 100,
}
p api_instance.get_seats_users("incident_response", opts)
