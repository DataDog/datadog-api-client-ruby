# List batch migration resources returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.list_security_monitoring_batch_migration_resources".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "batch_migration" in the system
BATCH_MIGRATION_DATA_ID = ENV["BATCH_MIGRATION_DATA_ID"]
p api_instance.list_security_monitoring_batch_migration_resources(BATCH_MIGRATION_DATA_ID)
