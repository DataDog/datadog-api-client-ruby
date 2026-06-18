# Create Vercel access token returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::VercelAPI.new

body = DatadogAPIClient::V2::VercelTokenCreateRequest.new({
  auth_grant_code: "code",
  vercel_configuration_id: "icfg_abc123",
})
p api_instance.create_vercel_token(body)
