# List Org Configs returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OrganizationsAPI.new
p api_instance.list_org_configs()
