require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new
archive_id = 'archive_id_example' # String | The ID of the archive.
body = DatadogAPIClient::V2::RelationshipToRole.new # RelationshipToRole | 

begin
  # Grant role to an archive
  api_instance.add_read_role_to_archive(archive_id, body)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->add_read_role_to_archive: #{e}"
end
