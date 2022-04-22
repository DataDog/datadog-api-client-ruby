# Upload IdP metadata returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OrganizationsAPI.new
opts = {
  idp_file: File.open("fixtures/organizations/saml_configurations/valid_idp_metadata.xml", "r"),
}
p api_instance.upload_idp_metadata(opts)
