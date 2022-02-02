require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new
archive_id = "archive_id_example" # String | The ID of the archive.

begin
  # Delete an archive
  api_instance.delete_logs_archive(archive_id)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->delete_logs_archive: #{e}"
end
