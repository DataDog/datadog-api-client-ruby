# Update a RUM exclusion filter returns "Updated" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumRetentionFiltersAPI.new

body = DatadogAPIClient::V2::RumExclusionFilterUpdateRequest.new({
  data: DatadogAPIClient::V2::RumExclusionFilterUpdateData.new({
    attributes: DatadogAPIClient::V2::RumExclusionFilterUpdateAttributes.new({
      enabled: true,
      event_type: DatadogAPIClient::V2::RumExclusionFilterEventType::ERROR,
      name: "Exclude noisy browser extension errors",
      query: "@error.message:*extension*",
    }),
    id: "051601eb-54a0-abc0-03f9-cc02efa18892",
    type: DatadogAPIClient::V2::RumExclusionFilterType::EXCLUSION_FILTERS,
  }),
})
p api_instance.update_exclusion_filter("app_id", "ef_id", body)
