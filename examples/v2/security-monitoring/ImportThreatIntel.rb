# Import threat intelligence feed returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.import_threat_intel".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
p api_instance.import_threat_intel("ti_vendor", ThreatIntelIndicatorType::IP_ADDRESS)
