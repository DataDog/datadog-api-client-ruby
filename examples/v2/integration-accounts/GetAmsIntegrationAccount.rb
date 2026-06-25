# Get integration account returns "OK: The account details for the specified integration." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::IntegrationAccountsAPI.new
p api_instance.get_ams_integration_account("integration_name", "interface_id", "account_id")
