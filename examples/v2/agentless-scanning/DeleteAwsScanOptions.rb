# Delete AWS scan options returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::AgentlessScanningAPI.new
api_instance.delete_aws_scan_options("account_id")
