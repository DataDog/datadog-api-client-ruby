# Get a list of incidents returns "OK" response

require "datadog_api_client"
DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:list_incidents] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new
p api_instance.list_incidents()
