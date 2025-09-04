# List Org Connections returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OrgConnectionsAPI.new
p api_instance.list_org_connections()
