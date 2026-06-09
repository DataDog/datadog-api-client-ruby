# Get agentless host facet info returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_csm_agentless_host_facet_info".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CSMSettingsAPI.new
p api_instance.get_csm_agentless_host_facet_info("cloud_provider")
