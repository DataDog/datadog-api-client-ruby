# Get an integration account returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IntegrationAccountsAPI.new
p api_instance.get_integration_account(IntegrationAccountIntegrationId::TWILIO, IntegrationAccountInterfaceId::TWILIO, "account_id")
