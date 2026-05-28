# Delete a Statuspage URL setting returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatuspageIntegrationAPI.new
api_instance.delete_statuspage_url_setting("statuspage_url_setting_id")
