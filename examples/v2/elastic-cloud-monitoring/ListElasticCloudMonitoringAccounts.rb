# List Elastic Cloud monitoring accounts returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_elastic_cloud_monitoring_accounts".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ElasticCloudMonitoringAPI.new
p api_instance.list_elastic_cloud_monitoring_accounts()
