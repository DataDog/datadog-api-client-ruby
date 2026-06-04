# Get a SAML configuration returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OrganizationsAPI.new
p api_instance.get_saml_configuration("3653d3c6-0c75-11ea-ad28-fb5701eabc7d")
