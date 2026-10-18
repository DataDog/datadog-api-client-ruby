# List batch migrations returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.list_security_monitoring_batch_migrations".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "batch_migration" in the system
BATCH_MIGRATION_DATA_ID = ENV["BATCH_MIGRATION_DATA_ID"]
opts = {
  filter_query: "id:7cdb3a75-64fb-46ce-9445-41969e78fe8e",
}
p api_instance.list_security_monitoring_batch_migrations(opts)
