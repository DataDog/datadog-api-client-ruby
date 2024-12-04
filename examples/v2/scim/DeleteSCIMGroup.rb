# Delete SCIM group returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ScimAPI.new
api_instance.delete_scim_group("group_id")
