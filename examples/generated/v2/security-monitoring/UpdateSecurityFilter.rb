require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
security_filter_id = "security_filter_id_example" # String | The ID of the security filter.
body = DatadogAPIClient::V2::SecurityFilterUpdateRequest.new({ data: DatadogAPIClient::V2::SecurityFilterUpdateData.new({ attributes: DatadogAPIClient::V2::SecurityFilterUpdateAttributes.new, type: DatadogAPIClient::V2::SecurityFilterType::SECURITY_FILTERS }) }) # SecurityFilterUpdateRequest | New definition of the security filter.

begin
  # Update a security filter
  result = api_instance.update_security_filter(security_filter_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling SecurityMonitoringAPI->update_security_filter: #{e}"
end
