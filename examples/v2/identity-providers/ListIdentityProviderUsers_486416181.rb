# List users with an identity provider override returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::IdentityProvidersAPI.new
api_instance.list_identity_provider_users_with_pagination("00000000-0000-0000-0000-000000000001") { |item| puts item }
