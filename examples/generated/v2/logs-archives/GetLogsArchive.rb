require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new
archive_id = 'archive_id_example' # String | The ID of the archive.

begin
  # Get an archive
  result = api_instance.get_logs_archive(archive_id)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->get_logs_archive: #{e}"
end
