# Delete an integration account returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IntegrationAccountsAPI.new
api_instance.delete_integration_account(IntegrationAccountIntegrationId::TWILIO, IntegrationAccountInterfaceId::TWILIO, "account_id")
