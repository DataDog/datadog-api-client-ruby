# Create a RUM exclusion filter returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_exclusion_filter".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumRetentionFiltersAPI.new

body = DatadogAPIClient::V2::RumExclusionFilterCreateRequest.new({
  data: DatadogAPIClient::V2::RumExclusionFilterCreateData.new({
    attributes: DatadogAPIClient::V2::RumExclusionFilterCreateAttributes.new({
      enabled: true,
      event_type: DatadogAPIClient::V2::RumExclusionFilterEventType::ERROR,
      name: "Exclude noisy browser extension errors",
      query: "@error.message:*extension*",
    }),
    type: DatadogAPIClient::V2::RumExclusionFilterType::EXCLUSION_FILTERS,
  }),
})
p api_instance.create_exclusion_filter("app_id", body)
