# Delete a user's authorizations for a client returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OrgAuthorizedClientsAPI.new
api_instance.delete_org_authorized_client_all_user_authorizations("00000000-0000-0000-0000-000000000001", "00000000-0000-9999-0000-000000000001")
