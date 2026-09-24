# Upload IdP metadata returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::OrganizationsAPI.new
opts = {
  idp_file: File.open("fixtures/organizations/saml_configurations/valid_idp_metadata.xml", "r"),
}
p api_instance.upload_idp_metadata(opts)
