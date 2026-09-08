# List permissions including scopes returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RolesAPI.new
opts = {
  include_scopes: true,
}
p api_instance.list_permissions(opts)
