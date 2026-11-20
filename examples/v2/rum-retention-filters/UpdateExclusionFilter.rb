# Update a RUM exclusion filter returns "Updated" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RUMRetentionFiltersAPI.new

body = DatadogAPIClient::V2::RUMExclusionFilterUpdateRequest.new({
  data: DatadogAPIClient::V2::RUMExclusionFilterUpdateData.new({
    attributes: DatadogAPIClient::V2::RUMExclusionFilterUpdateAttributes.new({
      enabled: true,
      event_type: DatadogAPIClient::V2::RUMExclusionFilterEventType::ERROR,
      name: "Exclude noisy browser extension errors",
      query: "@error.message:*extension*",
    }),
    id: "051601eb-54a0-abc0-03f9-cc02efa18892",
    type: DatadogAPIClient::V2::RUMExclusionFilterType::EXCLUSION_FILTERS,
  }),
})
p api_instance.update_exclusion_filter("app_id", "ef_id", body)
