# List SCIM groups returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ScimAPI.new
p api_instance.list_scim_groups()
