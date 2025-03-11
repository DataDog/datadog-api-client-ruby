# Create a RUM retention filter returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumRetentionFiltersAPI.new

body = DatadogAPIClient::V2::RumRetentionFilterCreateRequest.new({
  data: DatadogAPIClient::V2::RumRetentionFilterCreateData.new({
    type: DatadogAPIClient::V2::RumRetentionFilterType::RETENTION_FILTERS,
    attributes: DatadogAPIClient::V2::RumRetentionFilterCreateAttributes.new({
      name: "Test creating retention filter",
      event_type: DatadogAPIClient::V2::RumRetentionFilterEventType::SESSION,
      query: "custom_query",
      sample_rate: 50,
      enabled: true,
    }),
  }),
})
p api_instance.create_retention_filter("a33671aa-24fd-4dcd-ba4b-5bbdbafe7690", body)
