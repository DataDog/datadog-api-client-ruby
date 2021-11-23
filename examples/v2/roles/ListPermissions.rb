# List permissions returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RolesAPI.new
p api_instance.list_permissions()
