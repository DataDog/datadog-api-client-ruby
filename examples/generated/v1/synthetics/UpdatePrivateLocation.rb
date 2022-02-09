require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
location_id = "location_id_example" # String | The ID of the private location.
body = DatadogAPIClient::V1::SyntheticsPrivateLocation.new({ description: "Description of private location", name: "New private location", tags: ["team:front"] }) # SyntheticsPrivateLocation | Details of the private location to be updated.

begin
  # Edit a private location
  result = api_instance.update_private_location(location_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->update_private_location: #{e}"
end
