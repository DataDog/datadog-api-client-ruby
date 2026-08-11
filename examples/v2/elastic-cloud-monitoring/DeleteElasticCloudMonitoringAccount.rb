# Delete an Elastic Cloud monitoring account returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_elastic_cloud_monitoring_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ElasticCloudMonitoringAPI.new
api_instance.delete_elastic_cloud_monitoring_account("account_id")
