# List roles returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RolesAPI.new

# there is a valid "role" in the system
ROLE_DATA_ATTRIBUTES_NAME = ENV["ROLE_DATA_ATTRIBUTES_NAME"]
opts = {
  filter: ROLE_DATA_ATTRIBUTES_NAME,
}
p api_instance.list_roles(opts)
