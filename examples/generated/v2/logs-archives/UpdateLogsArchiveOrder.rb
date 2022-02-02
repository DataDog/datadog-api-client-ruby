require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new
body = DatadogAPIClient::V2::LogsArchiveOrder.new # LogsArchiveOrder | An object containing the new ordered list of archive IDs.

begin
  # Update archive order
  result = api_instance.update_logs_archive_order(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->update_logs_archive_order: #{e}"
end
