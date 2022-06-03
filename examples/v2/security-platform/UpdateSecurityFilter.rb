# Update a security filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityPlatformAPI.new

body = DatadogAPIClient::V2::SecurityFilterUpdateRequest.new({
  data: DatadogAPIClient::V2::SecurityFilterUpdateData.new({
    attributes: DatadogAPIClient::V2::SecurityFilterUpdateAttributes.new({
      exclusion_filters: [],
      filtered_data_type: DatadogAPIClient::V2::SecurityFilterFilteredDataType::LOGS,
      is_enabled: true,
      name: "Custom security filter",
      query: "service:api",
      version: 1,
    }),
    type: DatadogAPIClient::V2::SecurityFilterType::SECURITY_FILTERS,
  }),
})
p api_instance.update_security_filter("security_filter_id", body)
