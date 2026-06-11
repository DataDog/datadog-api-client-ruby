# List org authorized clients returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OrgAuthorizedClientsAPI.new
p api_instance.list_org_authorized_clients()
