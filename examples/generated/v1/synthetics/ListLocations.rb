require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

begin
  # Get all locations (public and private)
  result = api_instance.list_locations
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->list_locations: #{e}"
end
