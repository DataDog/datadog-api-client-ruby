# Download the Workload Protection policy (US1-FED) returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::CSMThreatsAPI.new
p api_instance.download_cloud_workload_policy_file()
