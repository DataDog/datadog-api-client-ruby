# Rehydrate an Archive Search returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.rehydrate_archive_search".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LogsArchiveSearchesAPI.new

body = DatadogAPIClient::V2::ArchiveSearchRehydrateRequest.new({
  data: DatadogAPIClient::V2::ArchiveSearchRehydrateRequestData.new({
    attributes: DatadogAPIClient::V2::ArchiveSearchRehydrateRequestAttributes.new({
      rehydration: DatadogAPIClient::V2::ArchiveSearchRehydrateRequestRehydration.new({
        retention_days: 15,
        tier: DatadogAPIClient::V2::ArchiveSearchRehydrationTier::STANDARD,
      }),
    }),
    type: DatadogAPIClient::V2::ArchiveSearchType::ARCHIVE_SEARCH,
  }),
})
p api_instance.rehydrate_archive_search("archive_search_id", body)
