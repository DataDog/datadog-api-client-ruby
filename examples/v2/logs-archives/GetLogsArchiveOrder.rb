# Get archive order returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new
p api_instance.get_logs_archive_order()
