# Create an Archive Search returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_archive_search".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LogsArchiveSearchesAPI.new

body = DatadogAPIClient::V2::ArchiveSearchCreateRequest.new({
  data: DatadogAPIClient::V2::ArchiveSearchCreateRequestData.new({
    attributes: DatadogAPIClient::V2::ArchiveSearchCreateRequestAttributes.new({
      archive_id: "mhmyYmyLTOaFYKvhNadu1w",
      description: "Investigating the checkout latency spike.",
      from: "2026-01-01T00:00:00Z",
      name: "checkout-latency-investigation",
      query: "service:checkout status:error",
      rehydration: DatadogAPIClient::V2::ArchiveSearchCreateRehydration.new({
        max_rehydrated_events: 1000000,
        retention_days: 15,
        tier: DatadogAPIClient::V2::ArchiveSearchRehydrationTier::STANDARD,
      }),
      to: "2026-01-02T00:00:00Z",
    }),
    type: DatadogAPIClient::V2::ArchiveSearchType::ARCHIVE_SEARCH,
  }),
})
p api_instance.create_archive_search(body)
