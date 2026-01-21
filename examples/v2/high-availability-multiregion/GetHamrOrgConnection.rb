# Get HAMR organization connection returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_hamr_org_connection".to_sym] = true
end
api_instance = DatadogAPIClient::V2::HighAvailabilityMultiRegionAPI.new
p api_instance.get_hamr_org_connection()
