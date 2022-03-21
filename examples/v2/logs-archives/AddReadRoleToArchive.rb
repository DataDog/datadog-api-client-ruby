# Grant role to an archive returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new

body = DatadogAPIClient::V2::RelationshipToRole.new({
  data: DatadogAPIClient::V2::RelationshipToRoleData.new({
    id: "3653d3c6-0c75-11ea-ad28-fb5701eabc7d",
    type: DatadogAPIClient::V2::RolesType::ROLES,
  }),
})
api_instance.add_read_role_to_archive("archive_id", body)
