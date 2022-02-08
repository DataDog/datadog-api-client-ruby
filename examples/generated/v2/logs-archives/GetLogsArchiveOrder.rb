require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new

begin
  # Get archive order
  result = api_instance.get_logs_archive_order
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->get_logs_archive_order: #{e}"
end
