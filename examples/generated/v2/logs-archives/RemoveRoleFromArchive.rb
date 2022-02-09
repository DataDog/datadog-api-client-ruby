require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new
archive_id = "archive_id_example" # String | The ID of the archive.
body = DatadogAPIClient::V2::RelationshipToRole.new # RelationshipToRole |

begin
  # Revoke role from an archive
  api_instance.remove_role_from_archive(archive_id, body)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->remove_role_from_archive: #{e}"
end
