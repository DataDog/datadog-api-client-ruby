# Get an org authorized client returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OrgAuthorizedClientsAPI.new
p api_instance.get_org_authorized_client("00000000-0000-0000-0000-000000000001")
