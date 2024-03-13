# Get the latest CSM Threats policy returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.download_csm_threats_policy".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudWorkloadSecurityAPI.new
p api_instance.download_csm_threats_policy()
