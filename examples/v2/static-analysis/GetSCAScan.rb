# Retrieve a dependency scan result returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_sca_scan".to_sym] = true
end
api_instance = DatadogAPIClient::V2::StaticAnalysisAPI.new
p api_instance.get_sca_scan("0190a3d4-1234-7000-8000-000000000000")
