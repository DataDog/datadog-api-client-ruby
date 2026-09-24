# Delete a GCP integration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::GCPIntegrationAPI.new

body = DatadogAPIClient::V1::GCPAccount.new({
  client_email: "252bf553ef04b351@example.com",
  client_id: "163662907116366290710",
  project_id: "datadog-apitest",
})
p api_instance.delete_gcp_integration(body)
