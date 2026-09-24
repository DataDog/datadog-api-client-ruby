# Get a specific Org Config value returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::OrganizationsAPI.new
p api_instance.get_org_config("custom_roles")
