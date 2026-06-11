# List org authorized clients returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OrgAuthorizedClientsAPI.new
api_instance.list_org_authorized_clients_with_pagination() { |item| puts item }
