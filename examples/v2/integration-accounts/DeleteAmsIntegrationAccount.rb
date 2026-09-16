# Delete integration account returns "OK: The account was successfully deleted." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::IntegrationAccountsAPI.new
p api_instance.delete_ams_integration_account("integration_name", "interface_id", "account_id")
