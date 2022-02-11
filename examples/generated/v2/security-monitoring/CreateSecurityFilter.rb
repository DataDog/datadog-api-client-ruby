require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
body = DatadogAPIClient::V2::SecurityFilterCreateRequest.new({ data: DatadogAPIClient::V2::SecurityFilterCreateData.new({ attributes: DatadogAPIClient::V2::SecurityFilterCreateAttributes.new({ exclusion_filters: [DatadogAPIClient::V2::SecurityFilterExclusionFilter.new({ name: "Exclude staging", query: "source:staging" })], filtered_data_type: DatadogAPIClient::V2::SecurityFilterFilteredDataType::LOGS, is_enabled: true, name: "Custom security filter", query: "service:api" }), type: DatadogAPIClient::V2::SecurityFilterType::SECURITY_FILTERS }) }) # SecurityFilterCreateRequest | The definition of the new security filter.

begin
  # Create a security filter
  result = api_instance.create_security_filter(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling SecurityMonitoringAPI->create_security_filter: #{e}"
end
