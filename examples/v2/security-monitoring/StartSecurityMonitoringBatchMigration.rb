# Start a batch migration returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.start_security_monitoring_batch_migration".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
p api_instance.start_security_monitoring_batch_migration("7cdb3a75-64fb-46ce-9445-41969e78fe8e")
