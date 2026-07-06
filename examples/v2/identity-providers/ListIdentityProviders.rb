# List identity providers returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::IdentityProvidersAPI.new
p api_instance.list_identity_providers()
