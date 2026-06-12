# List global orgs returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OrganizationsAPI.new
p api_instance.list_global_orgs("user@example.com")
