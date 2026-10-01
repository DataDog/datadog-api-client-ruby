# Get an Archive Search returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.get_archive_search".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LogsArchiveSearchesAPI.new
p api_instance.get_archive_search("archive_search_id")
