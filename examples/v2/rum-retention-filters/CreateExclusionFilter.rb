# Create a RUM exclusion filter returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RumRetentionFiltersAPI.new

body = DatadogAPIClient::V2::RumExclusionFilterCreateRequest.new({
  data: DatadogAPIClient::V2::RumExclusionFilterCreateData.new({
    type: DatadogAPIClient::V2::RumExclusionFilterType::EXCLUSION_FILTERS,
    attributes: DatadogAPIClient::V2::RumExclusionFilterCreateAttributes.new({
      name: "Example-Rum-Retention-Filter",
      enabled: true,
      event_type: DatadogAPIClient::V2::RumExclusionFilterEventType::ERROR,
      query: "@error.message:*extension*",
    }),
  }),
})
p api_instance.create_exclusion_filter("a33671aa-24fd-4dcd-ba4b-5bbdbafe7690", body)
