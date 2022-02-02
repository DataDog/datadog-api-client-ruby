require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
body = DatadogAPIClient::V1::SyntheticsPrivateLocation.new({description: 'Description of private location', name: 'New private location', tags: ['team:front']}) # SyntheticsPrivateLocation | Details of the private location to create.

begin
  # Create a private location
  result = api_instance.create_private_location(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->create_private_location: #{e}"
end
