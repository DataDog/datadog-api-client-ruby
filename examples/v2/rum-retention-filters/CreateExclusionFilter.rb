# Create a RUM exclusion filter returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RUMRetentionFiltersAPI.new

body = DatadogAPIClient::V2::RUMExclusionFilterCreateRequest.new({
  data: DatadogAPIClient::V2::RUMExclusionFilterCreateData.new({
    attributes: DatadogAPIClient::V2::RUMExclusionFilterCreateAttributes.new({
      enabled: true,
      event_type: DatadogAPIClient::V2::RUMExclusionFilterEventType::ERROR,
      name: "Exclude noisy browser extension errors",
      query: "@error.message:*extension*",
    }),
    type: DatadogAPIClient::V2::RUMExclusionFilterType::EXCLUSION_FILTERS,
  }),
})
p api_instance.create_exclusion_filter("app_id", body)
