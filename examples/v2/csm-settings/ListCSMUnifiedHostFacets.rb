# List unified host facets returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_csm_unified_host_facets".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CSMSettingsAPI.new
p api_instance.list_csm_unified_host_facets()
