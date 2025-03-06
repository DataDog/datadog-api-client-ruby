# Update a RUM retention filter returns "Updated" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumRetentionFiltersAPI.new

body = DatadogAPIClient::V2::RumRetentionFilterUpdateRequest.new({
  data: DatadogAPIClient::V2::RumRetentionFilterUpdateData.new({
    id: "4b95d361-f65d-4515-9824-c9aaeba5ac2a",
    type: DatadogAPIClient::V2::RumRetentionFilterType::RETENTION_FILTERS,
    attributes: DatadogAPIClient::V2::RumRetentionFilterUpdateAttributes.new({
      name: "Test updating retention filter",
      event_type: DatadogAPIClient::V2::RumRetentionFilterEventType::VIEW,
      query: "view_query",
      sample_rate: 100,
      enabled: true,
    }),
  }),
})
p api_instance.update_retention_filter("a33671aa-24fd-4dcd-ba4b-5bbdbafe7690", "4b95d361-f65d-4515-9824-c9aaeba5ac2a", body)
