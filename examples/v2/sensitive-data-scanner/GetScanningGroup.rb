# Get Scanning Group returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::SensitiveDataScannerAPI.new
p api_instance.get_scanning_group("group_id")
