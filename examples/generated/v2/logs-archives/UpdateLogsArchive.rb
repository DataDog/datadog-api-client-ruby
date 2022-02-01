require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new
archive_id = 'archive_id_example' # String | The ID of the archive.
body = DatadogAPIClient::V2::LogsArchiveCreateRequest.new # LogsArchiveCreateRequest | New definition of the archive.

begin
  # Update an archive
  result = api_instance.update_logs_archive(archive_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->update_logs_archive: #{e}"
end
