require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

begin
  # Get all security filters
  result = api_instance.list_security_filters
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling SecurityMonitoringAPI->list_security_filters: #{e}"
end
