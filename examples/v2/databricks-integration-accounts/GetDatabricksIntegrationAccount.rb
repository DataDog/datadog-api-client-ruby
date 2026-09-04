# Get a Databricks integration account returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_databricks_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DatabricksIntegrationAccountsAPI.new
p api_instance.get_databricks_integration_account("account_id")
