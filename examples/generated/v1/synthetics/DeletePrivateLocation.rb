require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
location_id = 'location_id_example' # String | The ID of the private location.

begin
  # Delete a private location
  api_instance.delete_private_location(location_id)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->delete_private_location: #{e}"
end
