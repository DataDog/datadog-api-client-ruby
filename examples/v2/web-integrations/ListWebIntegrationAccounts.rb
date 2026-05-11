# List web integration accounts returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_web_integration_accounts".to_sym] = true
end
api_instance = DatadogAPIClient::V2::WebIntegrationsAPI.new
p api_instance.list_web_integration_accounts("integration_name")
