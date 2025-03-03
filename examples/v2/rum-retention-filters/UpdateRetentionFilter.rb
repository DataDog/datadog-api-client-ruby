# Update a RUM retention filter returns "Updated" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumRetentionFiltersAPI.new

# there is a valid "rum_retention_filter" in the system
RUM_RETENTION_FILTER_DATA_ID = ENV["RUM_RETENTION_FILTER_DATA_ID"]

body = DatadogAPIClient::V2::RumRetentionFilterUpdateRequest.new({
  data: DatadogAPIClient::V2::RumRetentionFilterUpdateData.new({
    id: RUM_RETENTION_FILTER_DATA_ID,
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
p api_instance.update_retention_filter("a33671aa-24fd-4dcd-ba4b-5bbdbafe7690", RUM_RETENTION_FILTER_DATA_ID, body)
