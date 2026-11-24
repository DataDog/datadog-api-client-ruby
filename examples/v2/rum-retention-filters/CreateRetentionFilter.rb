# Create a RUM retention filter returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RUMRetentionFiltersAPI.new

body = DatadogAPIClient::V2::RUMRetentionFilterCreateRequest.new({
  data: DatadogAPIClient::V2::RUMRetentionFilterCreateData.new({
    type: DatadogAPIClient::V2::RUMRetentionFilterType::RETENTION_FILTERS,
    attributes: DatadogAPIClient::V2::RUMRetentionFilterCreateAttributes.new({
      name: "Test creating retention filter",
      event_type: DatadogAPIClient::V2::RUMRetentionFilterEventType::SESSION,
      query: "custom_query",
      sample_rate: 50,
      enabled: true,
    }),
  }),
})
p api_instance.create_retention_filter("a33671aa-24fd-4dcd-ba4b-5bbdbafe7690", body)
