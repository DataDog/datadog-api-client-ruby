# Delete an Elastic Cloud integration account returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_elastic_cloud_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ElasticCloudIntegrationAccountsAPI.new
api_instance.delete_elastic_cloud_integration_account(ElasticCloudInterfaceId::ELASTIC_CLOUD, "account_id")
