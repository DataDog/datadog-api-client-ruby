require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
security_filter_id = "security_filter_id_example" # String | The ID of the security filter.

begin
  # Delete a security filter
  api_instance.delete_security_filter(security_filter_id)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling SecurityMonitoringAPI->delete_security_filter: #{e}"
end
