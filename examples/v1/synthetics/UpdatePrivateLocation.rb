# Edit a private location returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

body = DatadogAPIClient::V1::SyntheticsPrivateLocation.new({
  description: "Description of private location",
  metadata: DatadogAPIClient::V1::SyntheticsPrivateLocationMetadata.new({
    restricted_roles: [
      "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
    ],
  }),
  name: "New private location",
  tags: [
    "team:front",
  ],
})
p api_instance.update_private_location("location_id", body)
