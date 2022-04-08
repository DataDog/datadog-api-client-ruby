# Create a private location returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

# there is a valid "role" in the system
ROLE_DATA_ID = ENV["ROLE_DATA_ID"]

body = DatadogAPIClient::V1::SyntheticsPrivateLocation.new({
  description: "Test Example-Create_a_private_location_returns_OK_response description",
  metadata: DatadogAPIClient::V1::SyntheticsPrivateLocationMetadata.new({
    restricted_roles: [
      ROLE_DATA_ID,
    ],
  }),
  name: "Example-Create_a_private_location_returns_OK_response",
  tags: [
    "test:examplecreateaprivatelocationreturnsokresponse",
  ],
})
p api_instance.create_private_location(body)
