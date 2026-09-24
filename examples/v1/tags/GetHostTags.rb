# Get Host Tags returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::TagsAPI.new
p api_instance.get_host_tags("host_name")
