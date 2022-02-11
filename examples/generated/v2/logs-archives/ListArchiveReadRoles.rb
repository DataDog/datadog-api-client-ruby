require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new
archive_id = "archive_id_example" # String | The ID of the archive.

begin
  # List read roles for an archive
  result = api_instance.list_archive_read_roles(archive_id)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->list_archive_read_roles: #{e}"
end
