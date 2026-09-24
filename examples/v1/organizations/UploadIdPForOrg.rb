# Upload IdP metadata returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::OrganizationsAPI.new
p api_instance.upload_idp_for_org("abc123", File.open("./idp_metadata.xml", "r"))
