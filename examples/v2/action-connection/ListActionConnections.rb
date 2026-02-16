# List action connections returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_action_connections".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ActionConnectionAPI.new
p api_instance.list_action_connections()
