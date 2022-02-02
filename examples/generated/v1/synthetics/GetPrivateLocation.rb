require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
location_id = "location_id_example" # String | The ID of the private location.

begin
  # Get a private location
  result = api_instance.get_private_location(location_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_private_location: #{e}"
end
