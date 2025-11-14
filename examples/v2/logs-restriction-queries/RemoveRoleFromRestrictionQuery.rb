# Revoke role from a restriction query returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsRestrictionQueriesAPI.new

# there is a valid "restriction_query" in the system
RESTRICTION_QUERY_DATA_ID = ENV["RESTRICTION_QUERY_DATA_ID"]

# there is a valid "role" in the system
ROLE_DATA_ID = ENV["ROLE_DATA_ID"]

body = DatadogAPIClient::V2::RelationshipToRole.new({
  data: DatadogAPIClient::V2::RelationshipToRoleData.new({
    id: ROLE_DATA_ID,
    type: DatadogAPIClient::V2::RolesType::ROLES,
  }),
})
api_instance.remove_role_from_restriction_query(RESTRICTION_QUERY_DATA_ID, body)
