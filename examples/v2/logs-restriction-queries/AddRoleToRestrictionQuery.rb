# Grant role to a restriction query returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.add_role_to_restriction_query".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LogsRestrictionQueriesAPI.new

body = DatadogAPIClient::V2::RelationshipToRole.new({
  data: DatadogAPIClient::V2::RelationshipToRoleData.new({
    id: "3653d3c6-0c75-11ea-ad28-fb5701eabc7d",
    type: DatadogAPIClient::V2::RolesType::ROLES,
  }),
})
api_instance.add_role_to_restriction_query("restriction_query_id", body)
