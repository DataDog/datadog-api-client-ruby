# Upload IdP metadata returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::OrganizationsAPI.new
p api_instance.upload_idp_for_org("abc123", File.open("./idp_metadata.xml", "r"))
