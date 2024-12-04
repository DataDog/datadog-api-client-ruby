# Get SCIM group returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ScimAPI.new
p api_instance.get_scim_group("group_id")
