# Get all Statuspage URL settings returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatuspageIntegrationAPI.new
p api_instance.list_statuspage_url_settings()
