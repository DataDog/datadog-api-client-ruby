# Get Entra ID Azure App Registration prerequisites returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_entra_id_azure_app_registrations".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
p api_instance.get_entra_id_azure_app_registrations()
