# Update a security filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "security_filter" in the system
SECURITY_FILTER_DATA_ID = ENV["SECURITY_FILTER_DATA_ID"]

body = DatadogAPIClient::V2::SecurityFilterUpdateRequest.new({
  data: DatadogAPIClient::V2::SecurityFilterUpdateData.new({
    attributes: DatadogAPIClient::V2::SecurityFilterUpdateAttributes.new({
      exclusion_filters: [],
      filtered_data_type: DatadogAPIClient::V2::SecurityFilterFilteredDataType::LOGS,
      is_enabled: true,
      name: "Example-Security-Monitoring",
      query: "service:ExampleSecurityMonitoring",
      version: 1,
    }),
    type: DatadogAPIClient::V2::SecurityFilterType::SECURITY_FILTERS,
  }),
})
p api_instance.update_security_filter(SECURITY_FILTER_DATA_ID, body)
