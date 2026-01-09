# Get SPA Recommendations with a shard parameter returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_spa_recommendations_with_shard".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SpaAPI.new
p api_instance.get_spa_recommendations_with_shard("shard", "service")
