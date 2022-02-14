require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new
body = DatadogAPIClient::V2::LogsArchiveCreateRequest.new # LogsArchiveCreateRequest | The definition of the new archive.

begin
  # Create an archive
  result = api_instance.create_logs_archive(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->create_logs_archive: #{e}"
end
