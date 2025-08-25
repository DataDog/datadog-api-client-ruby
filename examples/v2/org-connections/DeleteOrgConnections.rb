# Delete Org Connection returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OrgConnectionsAPI.new

# there is a valid "org_connection" in the system
ORG_CONNECTION_DATA_ID = ENV["ORG_CONNECTION_DATA_ID"]
p api_instance.delete_org_connections(ORG_CONNECTION_DATA_ID)
