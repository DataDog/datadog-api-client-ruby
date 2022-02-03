require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
security_filter_id = 'security_filter_id_example' # String | The ID of the security filter.

begin
  # Get a security filter
  result = api_instance.get_security_filter(security_filter_id)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling SecurityMonitoringAPI->get_security_filter: #{e}"
end
