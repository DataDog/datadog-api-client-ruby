require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:search_security_monitoring_signals] = true
end

api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
opts = {
  body: DatadogAPIClient::V2::SecurityMonitoringSignalListRequest.new # SecurityMonitoringSignalListRequest | 
}

begin
  # Get a list of security signals
  result = api_instance.search_security_monitoring_signals(opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling SecurityMonitoringAPI->search_security_monitoring_signals: #{e}"
end
