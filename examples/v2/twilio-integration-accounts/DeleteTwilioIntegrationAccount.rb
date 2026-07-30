# Delete a Twilio integration account returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_twilio_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TwilioIntegrationAccountsAPI.new
api_instance.delete_twilio_integration_account(TwilioInterfaceType::TWILIO, "account_id")
