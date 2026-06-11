# List user authorizations for a client returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OrgAuthorizedClientsAPI.new
p api_instance.list_org_authorized_client_user_authorizations("00000000-0000-0000-0000-000000000001")
