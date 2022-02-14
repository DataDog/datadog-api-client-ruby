require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new

begin
  # Get all archives
  result = api_instance.list_logs_archives
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->list_logs_archives: #{e}"
end
