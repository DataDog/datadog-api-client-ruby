# Get the Statuspage account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatuspageIntegrationAPI.new
p api_instance.get_statuspage_account()
