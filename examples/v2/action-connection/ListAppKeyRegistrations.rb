# List App Key Registrations returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionConnectionAPI.new
p api_instance.list_app_key_registrations()
