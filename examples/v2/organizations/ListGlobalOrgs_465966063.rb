# List global orgs returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OrganizationsAPI.new
api_instance.list_global_orgs_with_pagination("user@example.com") { |item| puts item }
