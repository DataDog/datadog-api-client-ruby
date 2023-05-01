# Create a security filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityFilterCreateRequest.new({
  data: DatadogAPIClient::V2::SecurityFilterCreateData.new({
    attributes: DatadogAPIClient::V2::SecurityFilterCreateAttributes.new({
      exclusion_filters: [
        DatadogAPIClient::V2::SecurityFilterExclusionFilter.new({
          name: "Exclude staging",
          query: "source:staging",
        }),
      ],
      filtered_data_type: DatadogAPIClient::V2::SecurityFilterFilteredDataType::LOGS,
      is_enabled: true,
      name: "Example-Security-Monitoring",
      query: "service:ExampleSecurityMonitoring",
    }),
    type: DatadogAPIClient::V2::SecurityFilterType::SECURITY_FILTERS,
  }),
})
p api_instance.create_security_filter(body)
